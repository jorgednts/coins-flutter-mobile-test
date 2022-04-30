import 'package:flutter/material.dart';

class CustomDetailTextWidget extends StatelessWidget {
  const CustomDetailTextWidget({
    required this.detailText,
    required this.textColor,
    Key? key,
  }) : super(key: key);

  final String detailText;
  final Color textColor;

  @override
  Widget build(BuildContext context) => Expanded(
        child: Text(
          detailText,
          style: TextStyle(color: textColor),
        ),
      );
}
