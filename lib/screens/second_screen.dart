import 'package:flutter/material.dart';
import 'package:ui_task_2/custom/border_icon.dart';
import 'package:ui_task_2/sample_data.dart';
import 'package:ui_task_2/utils/constants.dart';
import 'package:ui_task_2/utils/widget_methods.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return SafeArea(
      child: Scaffold(
          backgroundColor: AppConstants.getColors.black,
          body: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 55, 35, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      AppData.getCardHolderData.getProfilePhoto,
                      fit: BoxFit.cover,
                      height: 65,
                      width: 65,
                    ),
                    WidgetMethods.verticalSpace(10),
                    Text(
                      AppData.getCardHolderData.getName,
                      style: themeData.textTheme.headline1,
                    ),
                    WidgetMethods.verticalSpace(2),
                    Text(
                      AppData.getCardHolderData.getPosition,
                      style: themeData.textTheme.headline2,
                    ),
                    WidgetMethods.verticalSpace(30),
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
                              iconDirectory: AppData
                                  .getSettingOptionsData
                                  .getSettingsOptions[int.parse(args[0])]
                                  .getImage,
                              header: AppData
                                  .getSettingOptionsData
                                  .getSettingsOptions[int.parse(args[0])]
                                  .getTitle,
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
                        color: AppConstants.getColors.grey.shade800,
                        child: BorderIcon(
                            child: Icon(
                              Icons.close,
                              color: AppConstants.getColors.white,
                            ),
                            height: 55,
                            width: 55,
                            onTap: () {
                              debugPrint("CloseButton is being tapped!");
                            }),
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

    return GestureDetector(
      onTap: () {
        debugPrint(onTapMessage);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: AppConstants.getColors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  Image.asset(
                    iconDirectory,
                    height: 50,
                    width: 50,
                  ),
                  WidgetMethods.horizontalSpace(20),
                  Text(
                    header,
                    style: themeData.textTheme.headline3,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
