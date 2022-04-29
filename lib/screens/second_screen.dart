import 'package:flutter/material.dart';
import 'package:ui_task_2/custom/border_icon.dart';
import 'package:ui_task_2/sample_data.dart';
import 'package:ui_task_2/utils/constants.dart';
import 'package:ui_task_2/utils/widget_functions.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final Size sizeOfScreen = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
          backgroundColor: COLOR_BLACK,
          body: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 55, 35, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      BS_CARD_HOLDER_DATA["profile photo"]!,
                      fit: BoxFit.cover,
                      height: 65,
                      width: 65,
                    ),
                    addVerticalSpace(10),
                    Text(
                      BS_CARD_HOLDER_DATA["name"]!,
                      style: themeData.textTheme.headline1,
                    ),
                    addVerticalSpace(2),
                    Text(
                      BS_CARD_HOLDER_DATA["position"]!,
                      style: themeData.textTheme.headline2,
                    ),
                    addVerticalSpace(30),
                    // need to put here another image AND CHANGE SAMPLE DATA FILE
                    Column(
                      children: [
                        ["0", "Corporate APP is being tapped!"],
                        ["1", "SecuritySettings is being tapped!"],
                        ["2", "OnlineShopping is being tapped!"],
                        ["3", "Groceries is being tapped!"],
                        ["4", "Utilities is being tapped!"],
                        ["5", "ThumbScanner is being tapped!"],
                      ]
                          .map((args) => ChoiseOption(
                              iconDirectory:
                                  BS_SETTINGS_OPTIONS[int.parse(args[0])]
                                      ["image"]!,
                              header: BS_SETTINGS_OPTIONS[int.parse(args[0])]
                                  ["header"]!,
                              onTapMessage: args[1]))
                          .toList(),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Container(
                        color: COLOR_GREY.shade800,
                        child: BorderIcon(
                            child: const Icon(
                              Icons.close,
                              color: COLOR_WHITE,
                            ),
                            height: 55,
                            width: 55,
                            onTap: () =>
                                debugPrint("CloseButton is being tapped!")),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}

class ChoiseOption extends StatelessWidget {
  final String iconDirectory;
  final String header;
  final String onTapMessage;

  const ChoiseOption(
      {Key? key,
      required this.iconDirectory,
      required this.header,
      required this.onTapMessage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: COLOR_BLACK,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                Image.asset(
                  iconDirectory,
                  height: 50,
                  width: 50,
                ),
                addHorizontalSpace(20),
                Text(
                  header,
                  style: themeData.textTheme.headline3,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
