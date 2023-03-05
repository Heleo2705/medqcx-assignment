import 'package:dartz/dartz.dart' as dz;
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:medqcx/constants/colour_constants.dart';
import 'package:medqcx/constants/text_style_constants.dart';
import 'package:medqcx/data/models/device_response_model/device_model.dart';
import 'package:medqcx/data/repo/data_repo.dart';
import 'package:medqcx/router/router.dart';
import 'package:medqcx/router/router.gr.dart';

import '../../data/models/failure.dart';
import '../components/accent_button.dart';
import '../components/bottom_bar.dart';
import '../components/primary_button.dart';
import '../../generated/assets.dart';
import '../components/product_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              "My Devices",
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
                  final list = snapshot.data
                      ?.getOrElse(() => throw UnimplementedError());
                  return ListView.builder(
                    itemCount: list?.length,
                    itemBuilder: (context, index) {
                      return ProductTile(
                        model: list![index],
                        child: Row(
                          children: [
                            Expanded(
                              child: PrimaryButton(
                                child: Text(
                                  "Raise Complaint",
                                  style: TextStyleConstants.text12(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: AccentButton(
                                onTap: () {
                                  appRouter.push(DeviceDetailScreenRoute(
                                      model: list![index]));
                                },
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
            }),
      ),
      bottomNavigationBar: BottomBar(index: 1),
    );
  }
}
