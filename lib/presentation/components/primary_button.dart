import 'package:flutter/material.dart';

import '../../constants/colour_constants.dart';

class PrimaryButton extends StatelessWidget {
  final Widget child;
  const PrimaryButton({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          color: ColorConstants.lavender,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
