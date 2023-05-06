import 'package:flutter/material.dart';

import '../../shared/util/const.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
    required this.formattedDate,
  });

  final String formattedDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: defaultPadding, right: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            formattedDate,
            style: TextStyle(
              color: Colors.grey.shade500,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            "Welcome back,\nFebri",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w500,
              color: defaultTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
