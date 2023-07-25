import 'package:flutter/material.dart';

class GeneralInfoWidget extends StatelessWidget {
  const GeneralInfoWidget({
    super.key,
    required this.firstTitle,
    required this.firstDescription,
    required this.secondTitle,
    required this.secondDescription,
  });
  final String firstTitle;
  final String firstDescription;
  final String secondTitle;
  final String secondDescription;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
            title: firstTitle,
            textColor: Colors.black.withOpacity(0.5),
            fontSize: 15),
        TextWidget(
            title: firstDescription, textColor: Colors.black, fontSize: 24),
        const SizedBox(
          height: 12,
        ),
        TextWidget(
            title: secondTitle,
            textColor: Colors.black.withOpacity(0.5),
            fontSize: 15),
        TextWidget(
            title: secondDescription, textColor: Colors.black, fontSize: 24)

        // const Text("")
      ],
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.title,
    required this.textColor,
    required this.fontSize,
  });
  final String title;
  final Color textColor;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        color: textColor,
      ),
    );
  }
}
