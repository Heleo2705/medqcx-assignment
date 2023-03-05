import 'package:flutter/material.dart';
import 'package:medqcx/constants/colour_constants.dart';
import 'package:medqcx/data/models/device_response_model/device_model.dart';
import 'package:medqcx/presentation/components/accent_button.dart';
import 'package:medqcx/presentation/components/primary_button.dart';
import 'package:medqcx/presentation/components/product_tile.dart';

import '../../constants/text_style_constants.dart';

class DeviceDetailScreen extends StatefulWidget {
  final DeviceModel model;
  const DeviceDetailScreen({Key? key, required this.model}) : super(key: key);

  @override
  State<DeviceDetailScreen> createState() => _DeviceDetailScreenState();
}

class _DeviceDetailScreenState extends State<DeviceDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Device Details",
          style: TextStyleConstants.text16(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Device Info",
                style: TextStyleConstants.text16(
                  color: ColorConstants.lavender,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ProductTile(child: null, model: widget.model),
              SizedBox(
                height: 40,
              ),
              Text(
                "Contracts and Certifications",
                style: TextStyleConstants.text16(
                  color: ColorConstants.lavender,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              _infoRow(label: "Warranty", data: "Yes"),
              _infoRow(label: "Insurance", data: "No"),
              _infoRow(label: "Additional Certificates", data: "No"),
              _infoRow(label: "AMC/CMC", data: "AMC"),
              _infoRow(label: "Last Service Date", data: "20 Jan 2023"),
              _infoRow(label: "Maintenance Cycle", data: "4 Months"),
              _infoRow(label: "Next Service Date", data: "20 May 2023"),
              SizedBox(
                height: 40,
              ),
              Text(
                "Service History",
                style: TextStyleConstants.text16(
                  color: ColorConstants.lavender,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              _serviceHistoryRow(label: "1 March 2023"),
              _serviceHistoryRow(label: "31 Dec 2021"),
              SizedBox(
                height: 40,
              ),
              PrimaryButton(
                  child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        "Troubleshoot",
                        style: TextStyleConstants.text16(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  _infoRow({required String label, required String data}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SizedBox(
        width: 250,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: TextStyleConstants.text12().copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              data,
              style: TextStyleConstants.text12().copyWith(
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _serviceHistoryRow({required String label}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SizedBox(
        width: 250,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: TextStyleConstants.text12().copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            AccentButton(
              label: "View Report",
            ),
          ],
        ),
      ),
    );
  }
}
