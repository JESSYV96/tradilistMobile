import 'package:flutter/material.dart';

import '../utils/colors.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Color color;
  final double width;
  final dynamic onButtonTap;

  const DefaultButton(
      {Key? key,
      required this.text,
      this.color = AppColors.primary,
      this.width = double.infinity,
      this.onButtonTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onButtonTap,
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 20)),
          backgroundColor: MaterialStateProperty.all(color),
        ),
        child: Text(text),
      ),
    );
  }
}
