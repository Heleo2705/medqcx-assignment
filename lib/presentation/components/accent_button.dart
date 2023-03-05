import 'package:flutter/material.dart';

import '/constants/colour_constants.dart';
import '/constants/text_style_constants.dart';

class AccentButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  const AccentButton({
    super.key,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          color: ColorConstants.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: Text(
              label,
              style: TextStyleConstants.text12(
                color: ColorConstants.lavender,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
