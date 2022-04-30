import 'package:flutter/material.dart';

import '../../../common/coins_constants_colors.dart';

class CustomAboutInfoWidget extends StatelessWidget {
  const CustomAboutInfoWidget({
    required this.detailsPageAboutText,
    required this.aboutText,
    Key? key,
  }) : super(key: key);

  final String detailsPageAboutText;
  final String aboutText;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.only(top: 20),
    margin: const EdgeInsets.symmetric(horizontal: 20),
    width: MediaQuery.of(context).size.width,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          detailsPageAboutText,
          style: const TextStyle(
              color: CoinsConstantsColors.primaryColor, fontSize: 18),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Text(
            aboutText,
            textAlign: TextAlign.justify,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ],
    ),
  );
}