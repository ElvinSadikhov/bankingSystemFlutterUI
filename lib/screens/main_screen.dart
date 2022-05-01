import 'package:flutter/material.dart';
import 'package:ui_task_2/custom/border_icon.dart';
import 'package:ui_task_2/sample_data.dart';
import 'package:ui_task_2/utils/constants.dart';
import 'package:ui_task_2/utils/money_converter.dart';
import 'package:ui_task_2/utils/widget_methods.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  final double iconSize = 30;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppConstants.getColors.black,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppConstants.getPaddings.kDefaultPadding,
                  vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BorderIcon(
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: AppConstants.getColors.white,
                    ),
                    height: iconSize,
                    width: iconSize,
                    onTap: () {
                      debugPrint("BackButton is being tapped!");
                    },
                  ),
                  BorderIcon(
                    child: Icon(
                      Icons.more_vert_rounded,
                      color: AppConstants.getColors.white,
                    ),
                    height: iconSize,
                    width: iconSize,
                    onTap: () {
                      debugPrint("OptionsButton is being tapped!");
                    },
                  ),
                ],
              ),
            ),
            WidgetMethods.verticalSpace(
                AppConstants.getPaddings.kDefaultPadding),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppConstants.getPaddings.kDefaultPadding + 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Cards",
                        style: themeData.textTheme.headline1,
                      ),
                      Text(
                        "You have 3 active cards",
                        style: themeData.textTheme.headline2,
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      debugPrint("AddCard is being tapped!");
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppConstants.getColors.amber.shade300),
                      child: Icon(
                        Icons.add,
                        color: AppConstants.getColors.black,
                        size: iconSize - 10,
                      ),
                    ),
                  )
                ],
              ),
            ),
            WidgetMethods.verticalSpace(
                AppConstants.getPaddings.kDefaultPadding),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppConstants.getPaddings.kDefaultPadding),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  color:
                      AppConstants.getColors.blue.withAlpha(170).withRed(100),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(28, 28, 20, 28),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //
                        Image.asset(
                          AppData.getCardHolderData.getChipImage,
                          fit: BoxFit.cover,
                          width: 40,
                          height: 30,
                        ),
                        WidgetMethods.verticalSpace(
                            AppConstants.getPaddings.kDefaultPadding),
                        Text(
                          AppData.getCardHolderData.getCardNumber,
                          style: themeData.textTheme.headline3,
                        ),
                        WidgetMethods.verticalSpace(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppData.getCardHolderData.getName,
                                  style: themeData.textTheme.headline4,
                                ),
                                WidgetMethods.verticalSpace(10),
                                Text(
                                  "Expry date",
                                  style: themeData.textTheme.headline5,
                                ),
                                WidgetMethods.verticalSpace(5),
                                Text(
                                  AppData.getCardHolderData.getExpryDate,
                                  style: themeData.textTheme.headline4,
                                )
                              ],
                            ),
                            // photo
                            SizedBox(
                              height: 80,
                              width: 90,
                              child: Column(
                                children: [
                                  Image.asset(
                                    AppData.getCardHolderData.getCardLogo,
                                    height: 60,
                                    width: 60,
                                  ),
                                  Text(
                                    AppData.getCardHolderData.getCardType,
                                    style: themeData.textTheme.headline6,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            WidgetMethods.verticalSpace(
                AppConstants.getPaddings.kDefaultPadding),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppConstants.getPaddings.kDefaultPadding + 5),
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Recent transactions",
                      style: AppConstants.getThemes.firstScreen.headline1!
                          .copyWith(fontSize: 24))),
            ),
            WidgetMethods.verticalSpace(
                AppConstants.getPaddings.kDefaultPadding),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [0, 1, 2, 3]
                      .map((index) => ExpendetureItem(
                          imageDir: AppData.getExpendetureData
                              .getExpendetures[index].getImage,
                          title: AppData.getExpendetureData
                              .getExpendetures[index].getTitle,
                          date: AppData.getExpendetureData
                              .getExpendetures[index].getDate,
                          amount: AppData.getExpendetureData
                              .getExpendetures[index].getAmount))
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExpendetureItem extends StatelessWidget {
  final String imageDir, title, date, amount;

  const ExpendetureItem(
      {Key? key,
      required this.imageDir,
      required this.title,
      required this.date,
      required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            color: AppConstants.getColors.grey.shade900,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            imageDir,
                            height: 35,
                            width: 35,
                          ),
                          WidgetMethods.verticalSpace(4),
                        ],
                      ),
                      WidgetMethods.horizontalSpace(35),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: AppConstants.getThemes.firstScreen.headline1!
                                .copyWith(fontSize: 17),
                          ),
                          WidgetMethods.verticalSpace(5),
                          Text(date,
                              style: AppConstants
                                  .getThemes.firstScreen.headline4!
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15))
                        ],
                      )
                    ],
                  ),
                  Text(
                    MoneyConverter.convert(amount),
                    style: AppConstants.getThemes.firstScreen.headline5!
                        .copyWith(
                            fontSize: 14,
                            color: AppConstants.getColors.grey.shade500),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
