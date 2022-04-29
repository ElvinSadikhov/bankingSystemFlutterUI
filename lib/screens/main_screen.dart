import 'package:flutter/material.dart';
import 'package:ui_task_2/custom/border_icon.dart';
import 'package:ui_task_2/sample_data.dart';
import 'package:ui_task_2/utils/constants.dart';
import 'package:ui_task_2/utils/money_converter.dart';
import 'package:ui_task_2/utils/widget_functions.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    const double verticalDistance = 15;
    const double iconSize = 30;
    const double viewPaddingLength = 15;
    const double textPaddingLength = 20;

    return SafeArea(
      child: Scaffold(
        backgroundColor: COLOR_BLACK,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: viewPaddingLength, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:
                    [Icons.arrow_back_ios_rounded, Icons.more_vert_rounded]
                        .map((icon) => BorderIcon(
                            child: Icon(
                              icon,
                              color: COLOR_WHITE,
                            ),
                            height: iconSize,
                            width: iconSize))
                        .toList(),
              ),
            ),
            addVerticalSpace(verticalDistance),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: textPaddingLength),
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
                    onTap: () => {debugPrint("AddCard is being tapped!")},
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: COLOR_AMBER.shade300),
                      child: const Icon(
                        Icons.add,
                        color: COLOR_BLACK,
                        size: iconSize,
                      ),
                    ),
                  )
                ],
              ),
            ),
            addVerticalSpace(verticalDistance),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: viewPaddingLength),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  color: COLOR_BLUE.withAlpha(170).withRed(100),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(28, 28, 20, 28),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //
                        Image.asset(
                          BS_CARD_HOLDER_DATA["chip image"]!,
                          fit: BoxFit.cover,
                          width: 40,
                          height: 30,
                        ),
                        addVerticalSpace(verticalDistance),
                        Text(
                          BS_CARD_HOLDER_DATA["card number"]!,
                          style: themeData.textTheme.headline3,
                        ),
                        addVerticalSpace(10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  BS_CARD_HOLDER_DATA["name"]!,
                                  style: themeData.textTheme.headline4,
                                ),
                                addVerticalSpace(10),
                                Text(
                                  "Expry date",
                                  style: themeData.textTheme.headline5,
                                ),
                                addVerticalSpace(5),
                                Text(
                                  BS_CARD_HOLDER_DATA["expry date"]!,
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
                                    BS_CARD_HOLDER_DATA["card logo"]!,
                                    height: 60,
                                    width: 60,
                                  ),
                                  Text(
                                    BS_CARD_HOLDER_DATA["card type"]!,
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
            addVerticalSpace(verticalDistance),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: textPaddingLength),
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Recent transactions",
                      style: TextStyle(
                          fontFamily: "RadioCanada",
                          color: COLOR_GREY.shade200,
                          fontWeight: FontWeight.w800,
                          fontSize: 24))),
            ),
            addVerticalSpace(verticalDistance),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [0, 1, 2, 3]
                      .map((index) => ExpendetureItem(
                          imageDir: BS_EXPENDATURE_DATA[index]["image"]!,
                          header: BS_EXPENDATURE_DATA[index]["source"]!,
                          date: BS_EXPENDATURE_DATA[index]["date"]!,
                          amount: BS_EXPENDATURE_DATA[index]["amount"]!))
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
  final String imageDir, header, date, amount;

  const ExpendetureItem(
      {Key? key,
      required this.imageDir,
      required this.header,
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
            color: COLOR_GREY.shade900,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
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
                          addVerticalSpace(4),
                        ],
                      ),
                      addHorizontalSpace(35),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            header,
                            style: TextStyle(
                                fontFamily: "RadioCanada",
                                color: COLOR_GREY.shade200,
                                fontWeight: FontWeight.w700,
                                fontSize: 17),
                          ),
                          addVerticalSpace(5),
                          Text(date,
                              style: const TextStyle(
                                  fontFamily: "RadioCanada",
                                  color: COLOR_WHITE,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15))
                        ],
                      )
                    ],
                  ),
                  Text(
                    converter(amount),
                    style: TextStyle(
                        fontFamily: "RadioCanada",
                        color: COLOR_GREY.shade400,
                        fontWeight: FontWeight.w900,
                        fontSize: 14),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
