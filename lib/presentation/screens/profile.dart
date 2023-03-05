import 'package:flutter/material.dart';
import 'package:medqcx/constants/colour_constants.dart';
import 'package:medqcx/constants/text_style_constants.dart';

import '../components/bottom_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Profile",
          style: TextStyleConstants.text16(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorConstants.lavenderLight,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        "Dr. Ashish Nehra",
                        style: TextStyleConstants.text16(),
                      ),
                    ),
                    _contactRow(
                      label: "xyz@gmail.com",
                      icon: Icons.mail_outline,
                    ),
                    _contactRow(
                        icon: Icons.phone_outlined, label: "9876543210"),
                    _contactRow(
                      icon: Icons.apartment_outlined,
                      label: "Medhanta, "
                          "Delhi",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            redirectionTile(
              label: "Manage Hospitals",
            ),
            redirectionTile(
              label: "Manage Users",
            ),
            SizedBox(
              height: 20,
            ),
            redirectionTile(
              label: "Contact Users",
            ),
            redirectionTile(
              label: "Rate us on App Store",
            ),
            redirectionTile(
              label: "Terms and Conditions",
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(index: 3),
    );
  }

  redirectionTile({required String label}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: ColorConstants.lavenderLight,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$label",
              style: TextStyleConstants.text12(),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 15,
            ),
          ],
        ),
      ),
    );
  }

  Padding _contactRow({required IconData icon, required String label}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Icon(
            icon,
            size: 15,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "$label",
            style: TextStyleConstants.text12(),
          )
        ],
      ),
    );
  }
}
