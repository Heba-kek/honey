import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/Router/Router.dart';
import 'package:honey/presentation/page/Wallets/Components/Wallets%20Category/WalletCategoryListItem.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletsHeader.dart';
import 'package:honey/presentation/page/Wallets/Components/bottomHomeButton.dart';
import 'package:honey/presentation/page/Wallets/CreatCreditWallet.dart';

class SelectWalletCategory extends StatefulWidget {
  @override
  _SelectWalletCategoryState createState() => _SelectWalletCategoryState();
}

class _SelectWalletCategoryState extends State<SelectWalletCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.mainYellowColor,
      child: SafeArea(
        top: true,
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              WalletsHeader(
                onPressAdd: () {},
                showAdd: false,
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.all(24),
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                            RouteNames.createCasheWallet,
                            arguments: false);
                      },
                      child: WalletCategoryListItem(
                        title: "Cash",
                        imagePath: "assets/images/meals.png",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                              RouteNames.createCasheWallet,
                              arguments: true);
                        },
                        child: WalletCategoryListItem(
                          title: "Bank Account",
                          imagePath: "assets/images/meals.png",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            RouteNames.creatCreditWallet,
                            arguments: CreateCreditType.CreditCard,
                          );
                        },
                        child: WalletCategoryListItem(
                          title: "Credit Card",
                          imagePath: "assets/images/meals.png",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            RouteNames.creatCreditWallet,
                            arguments: CreateCreditType.PrePaidCard,
                          );
                        },
                        child: WalletCategoryListItem(
                          title: "PrePaid Card",
                          imagePath: "assets/images/meals.png",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            RouteNames.creatCreditWallet,
                            arguments: CreateCreditType.ProjectBox,
                          );
                        },
                        child: WalletCategoryListItem(
                          title: "Project box",
                          imagePath: "assets/images/meals.png",
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                            RouteNames.savingProjectWallet,
                          );
                        },
                        child: WalletCategoryListItem(
                          title: "Saving Project",
                          imagePath: "assets/images/meals.png",
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomHomeButton(),
        ),
      ),
    );
  }
}
