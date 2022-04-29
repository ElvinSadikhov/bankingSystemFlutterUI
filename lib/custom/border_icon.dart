import 'package:flutter/material.dart';

class BorderIcon extends StatelessWidget {
  final Function onTap;
  final Widget child;
  final double height, width;

  const BorderIcon(
      {Key? key,
      required this.child,
      required this.height,
      required this.width,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
