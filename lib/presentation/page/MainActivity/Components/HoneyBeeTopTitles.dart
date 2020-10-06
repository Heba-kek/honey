import 'package:flutter/cupertino.dart';
import 'package:honey/presentation/Common/HoneyBeeTitle.dart';

class HoneyBeeTopTitles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
     //   mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
          //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: HoneyBeeTitle(
                    fontSize: 32,
                  )),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: HoneyBeeTitle(
                    fontSize: 16,
                  )),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "Organize your life",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(),
            ],
          )
        ],
      ),
    );
  }
}
