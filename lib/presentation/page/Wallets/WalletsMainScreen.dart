import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/Router/Router.dart';
import 'package:honey/Domain/Wallets/Entities/WalletsEntity.dart';
import 'package:honey/application/Wallets/WalletsBloc.dart';
import 'package:honey/application/Wallets/bloc.dart';
import 'package:honey/presentation/Common/ProgressWidget.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletItem.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletsHeader.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:honey/presentation/page/Wallets/Components/bottomHomeButton.dart';

class WalletsMainScreen extends StatefulWidget {
  @override
  _WalletsMainScreenState createState() => _WalletsMainScreenState();
}

class _WalletsMainScreenState extends State<WalletsMainScreen> {
  WalletsBloc walletsBloc;
  WalletsEntity tempEntity;
  @override
  void initState() {
    walletsBloc = WalletsBloc();
    super.initState();
  }

  @override
  void dispose() {
    walletsBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => walletsBloc,
      child: Container(
        color: CustomColors.mainYellowColor,
        child: SafeArea(
          top: true,
          bottom: false,
          child: Directionality(
            textDirection:
                Localizations.localeOf(context).toString().contains("ar")
                    ? TextDirection.ltr
                    : TextDirection.rtl,
            child: Scaffold(
              backgroundColor: Colors.white,
              body: BlocConsumer<WalletsBloc, WalletState>(
                builder: (context, state) {
                  print("state: $state");
                  if (state is Empty) {
                    walletsBloc.add(GetWalletsEvent());
                  } else if (state is Error) {
                    return Center(
                      child: Text(state.message),
                    );
                  } else if (state is GetWalletsLoaded) {
                    tempEntity = state.walletsEntity;
                    if (tempEntity.code == "1") {
                      return getBody(tempEntity.data);
                    } else {
                      return Text(tempEntity.msg);
                    }
                  } else if (state is Loaded) {
                    walletsBloc.add(GetWalletsEvent());
                  }
                  return progressWidget();
                },
                listener: (context, state) {},
              ),
              bottomNavigationBar: BottomHomeButton(),
            ),
          ),
        ),
      ),
    );
  }

  Widget getBody(List<WalletsData> data) {
    return Column(
      children: [
        WalletsHeader(
          onPressAdd: () {
            Navigator.of(context)
                .pushNamed(RouteNames.selectWalletCategory)
                .then((value) {
              walletsBloc.add(GetWalletsEvent());
            });
          },
          showAdd: true,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(44.0),
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                WalletsData element = data[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: WalletItem(
                    imagePath: element.icon,
                    title: element.name,
                    value: element.balance,
                    unit: "SP",
                    onPressDelete: () {
                      walletsBloc.add(DeleteWalletEvent(walletID: element.id));
                    },
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
