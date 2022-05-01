import 'package:flutter/material.dart';
import 'package:ui_task_2/screens/second_screen.dart';
import 'package:ui_task_2/utils/constants.dart';
import 'screens/main_screen.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: AppConstants.getColors.black,
          textTheme: AppConstants.getThemes.firstScreen),
      home: const MainScreen(),
    );

    // return MaterialApp(
    //   theme: ThemeData(
    //       primaryColor: AppConstants.getColors.black,
    //       textTheme: AppConstants.getThemes.secondScreen),
    //   home: const SecondScreen(),
    // );
  }
}

void main() {
  runApp(const Main());
}
