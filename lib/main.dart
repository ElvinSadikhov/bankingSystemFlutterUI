import 'package:flutter/material.dart';
import 'package:ui_task_2/utils/constants.dart';
import 'screens/main_screen.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: COLOR_BLACK, textTheme: TEXT_THEME_MAIN_SCREEN),
      home: const MainScreen(),
    );
  }
}

void main() {
  runApp(const Main());
}
