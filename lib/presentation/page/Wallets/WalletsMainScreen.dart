import 'package:flutter/material.dart';
import 'package:honey/Core/Helpers/CustomColors.dart';
import 'package:honey/Core/Router/Router.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletItem.dart';
import 'package:honey/presentation/page/Wallets/Components/WalletsHeader.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:honey/presentation/page/Wallets/Components/bottomHomeButton.dart';

class WalletsMainScreen extends StatefulWidget {
  @override
  _WalletsMainScreenState createState() => _WalletsMainScreenState();
}

class _WalletsMainScreenState extends State<WalletsMainScreen> {
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
                onPressAdd: () {
                  Navigator.of(context)
                      .pushNamed(RouteNames.selectWalletCategory);
                },
                showAdd: true,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(44.0),
                  child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 24.0),
                        child: WalletItem(
                          imagePath:
                              "https://previews.123rf.com/images/juliarstudio/juliarstudio1601/juliarstudio160102681/51730919-coins-isom%C3%A9trique-3d-ic%C3%B4ne-sur-fond-transparent.jpg",
                          title: "Cash",
                          value: "50,0000",
                          unit: "SP",
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
          bottomNavigationBar: BottomHomeButton(),
        ),
      ),
    );
  }
}
