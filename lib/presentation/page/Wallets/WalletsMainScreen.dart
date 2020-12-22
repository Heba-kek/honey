import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/PreferenceUtils.dart';
import 'package:honey/Core/Router/Router.dart';
import 'package:honey/Core/lang/localss.dart';
import 'package:honey/Domain/Wallets/Entities/WalletsEntity.dart';
import 'package:honey/application/Wallets/WalletsBloc.dart';
import 'package:honey/application/Wallets/bloc.dart';
import 'package:honey/presentation/Common/Helpers.dart';
import 'package:honey/presentation/Common/ProgressWidget.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletItem.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletsHeader.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:honey/presentation/page/Wallets/Components/bottomHomeButton.dart';
import 'package:intl/intl.dart' as intl;

import 'Components/WalletHelper.dart';

class WalletsMainScreen extends StatefulWidget {
  @override
  _WalletsMainScreenState createState() => _WalletsMainScreenState();
}

class _WalletsMainScreenState extends State<WalletsMainScreen> {
  WalletsBloc walletsBloc;
  WalletsEntity tempEntity;
  final AppLocalizations local = AppLocalizations();

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
            textDirection: local.locale.toString().contains("ar")
                ? TextDirection.rtl
                : TextDirection.ltr,
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
    return Stack(
      children: [
        Column(
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
                padding: const EdgeInsets.all(25.0),
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    WalletsData element = data[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: WalletItem(
                        imagePath: element.icon,
                        title: element.walletName,
                        value: formatter.format(double.parse(element.balance)),
                        unit: PreferenceUtils().user.data.currency,
                        onPressDelete: () {
                          showAlertDialog(context, () {
                            Navigator.of(context).pop();
                            walletsBloc
                                .add(DeleteWalletEvent(walletID: element.id));
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(WalletHelper.svgPath + "exchange1.svg"),
                      Text(
                        local.lbExchange,
                        style: TextStyle(fontSize: 14, fontFamily: "Ebrima"),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
