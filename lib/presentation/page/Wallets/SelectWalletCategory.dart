import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/Router/Router.dart';
import 'package:honey/Domain/Wallets/Entities/WalletTypeEntity.dart';
import 'package:honey/application/Wallets/bloc.dart';
import 'package:honey/presentation/Common/ProgressWidget.dart';
import 'package:honey/presentation/page/Wallets/Components/Wallets%20Category/WalletCategoryListItem.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletsHeader.dart';
import 'package:honey/presentation/page/Wallets/Components/bottomHomeButton.dart';
import 'package:honey/presentation/page/Wallets/CreatCreditWallet.dart';

class SelectWalletCategory extends StatefulWidget {
  @override
  _SelectWalletCategoryState createState() => _SelectWalletCategoryState();
}

class _SelectWalletCategoryState extends State<SelectWalletCategory> {
  WalletsBloc walletsBloc;

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
    return Directionality(
      textDirection: Localizations.localeOf(context).toString().contains("ar")
          ? TextDirection.ltr
          : TextDirection.rtl,
      child: BlocProvider(
        create: (context) => walletsBloc,
        child: Container(
          color: CustomColors.mainYellowColor,
          child: SafeArea(
            top: true,
            bottom: false,
            child: Scaffold(
              backgroundColor: Colors.white,
              body: BlocConsumer<WalletsBloc, WalletState>(
                builder: (context, state) {
                  if (state is Empty) {
                    walletsBloc.add(GetWalletTypesEvent());
                  } else if (state is Error) {
                    return Center(
                      child: Text(state.message),
                    );
                  } else if (state is GetWalletTypeLoaded) {
                    WalletTypeEntity entity = state.walletTypeEntity;
                    if (entity.code == "1") {
                      return getBody(entity.data);
                    } else {
                      return Text(entity.msg);
                    }
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

  Widget getBody(List<WalletTypeData> data) {
    return Column(
      children: [
        WalletsHeader(
          onPressAdd: () {},
          showAdd: false,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              WalletTypeData element = data[index];
              return InkWell(
                onTap: () {
                  if (element.id == "1") {
                    Navigator.of(context).pushNamed(
                      RouteNames.createCasheWallet,
                      arguments: {"isBank": false, "WalletTypeData": element},
                    );
                  } else if (element.id == "2") {
                    Navigator.of(context).pushNamed(
                      RouteNames.createCasheWallet,
                      arguments: {"isBank": true, "WalletTypeData": element},
                    );
                  } else if (element.id == "3") {
                    Navigator.of(context).pushNamed(
                      RouteNames.creatCreditWallet,
                      arguments: {
                        "type": CreateCreditType.CreditCard,
                        "WalletTypeData": element
                      },
                    );
                  } else if (element.id == "4") {
                    Navigator.of(context).pushNamed(
                      RouteNames.creatCreditWallet,
                      arguments: {
                        "type": CreateCreditType.PrePaidCard,
                        "WalletTypeData": element
                      },
                    );
                  } else if (element.id == "5") {
                    Navigator.of(context).pushNamed(
                      RouteNames.creatCreditWallet,
                      arguments: {
                        "type": CreateCreditType.ProjectBox,
                        "WalletTypeData": element
                      },
                    );
                  } else if (element.id == "6") {
                    Navigator.of(context).pushNamed(
                        RouteNames.savingProjectWallet,
                        arguments: {"WalletTypeData": element});
                  }
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: WalletCategoryListItem(
                    title: element.name,
                    imagePath: element.icon,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
