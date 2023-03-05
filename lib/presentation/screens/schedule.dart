import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:medqcx/constants/colour_constants.dart';
import 'package:medqcx/constants/text_style_constants.dart';
import 'package:medqcx/presentation/components/product_tile.dart';

import '../../data/models/device_response_model/device_model.dart';
import '../../data/models/failure.dart';
import '../../data/repo/data_repo.dart';
import '../components/accent_button.dart';
import '../components/bottom_bar.dart';
import '../components/primary_button.dart';
import '../../generated/assets.dart';
import 'package:dartz/dartz.dart' as dz;

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  final repo = DataRepo();
  Future<dz.Either<Failure, List<DeviceModel>>>? getDeviceModels;
  @override
  void initState() {
    getDeviceModels = repo.getDeviceInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.lavenderLight,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Icon(
              Icons.maps_home_work,
              color: ColorConstants.lavender,
              size: 40,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Upcoming Maintenances",
              style: TextStyleConstants.text16(),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: FutureBuilder<dz.Either<Failure, List<DeviceModel>>>(
          future: getDeviceModels,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data?.isRight() ?? false) {
                final list =
                    snapshot.data?.getOrElse(() => throw UnimplementedError());
                return ListView.builder(
                  itemCount: list?.length,
                  itemBuilder: (context, index) {
                    return ProductTile(
                      model: list![index],
                      child: Row(
                        children: [
                          Expanded(
                            child: PrimaryButton(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.timer,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "3 Days",
                                      style: TextStyleConstants.text12(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: AccentButton(
                              label: "View Details",
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              } else {
                return Center(
                  child: Text("Some Error Occurred"),
                );
              }
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
      bottomNavigationBar: BottomBar(index: 2),
    );
  }
}
