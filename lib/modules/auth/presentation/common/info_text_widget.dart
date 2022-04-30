import 'package:flutter/material.dart';


class InfoTextWidget extends StatelessWidget {
  const InfoTextWidget({
    required this.infoText,
    Key? key,
  }) : super(key: key);

  final String infoText;

  @override
  Widget build(BuildContext context) => Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              infoText,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      );
}
