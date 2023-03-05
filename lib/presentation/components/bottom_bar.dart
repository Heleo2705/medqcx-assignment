import 'package:flutter/material.dart';
import 'package:medqcx/router/router.dart';
import 'package:medqcx/router/router.gr.dart';

import '/constants/colour_constants.dart';
import '/constants/text_style_constants.dart';

class BottomBar extends StatelessWidget {
  final int index;
  const BottomBar({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                appRouter.replace(HomeScreenRoute());
              },
              child: Column(
                children: [
                  Icon(
                    Icons.monitor_heart_rounded,
                    size: 20,
                    color:
                        (index == 1) ? ColorConstants.lavender : Colors.black,
                  ),
                  Text(
                    "My Devices",
                    style: TextStyleConstants.text10(
                      color:
                          (index == 1) ? ColorConstants.lavender : Colors.black,
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                appRouter.push(ScheduleScreenRoute());
              },
              child: Column(
                children: [
                  Icon(
                    Icons.calendar_today,
                    size: 20,
                    color:
                        (index == 2) ? ColorConstants.lavender : Colors.black,
                  ),
                  Text(
                    "Schedule",
                    style: TextStyleConstants.text10(
                      color:
                          (index == 2) ? ColorConstants.lavender : Colors.black,
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                appRouter.push(ProfileScreenRoute());
              },
              child: Column(
                children: [
                  Icon(
                    Icons.person,
                    size: 20,
                    color:
                        (index == 3) ? ColorConstants.lavender : Colors.black,
                  ),
                  Text(
                    "Profile",
                    style: TextStyleConstants.text10(
                      color:
                          (index == 3) ? ColorConstants.lavender : Colors.black,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
