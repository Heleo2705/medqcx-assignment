import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:medqcx/data/models/device_response_model/device_model.dart';

import '../../constants/colour_constants.dart';
import '../../constants/text_style_constants.dart';
import '../../generated/assets.dart';

class ProductTile extends StatelessWidget {
  final Widget? child;
  final DeviceModel model;
  const ProductTile({
    super.key,
    required this.child,// TODO: implement initState

    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        // height: 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        model.imageUrl!,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "${model.name}",
                          style: TextStyleConstants.text12().copyWith(
                              color: Colors.black45,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "${model.manufacturer}",
                          style: TextStyleConstants.text10().copyWith(
                              color: Colors.black45,
                              fontWeight: FontWeight.w700),
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Model: ",
                            style: TextStyleConstants.text10().copyWith(
                              color: Colors.black45,
                            ),
                            children: [
                              TextSpan(
                                text: "${model.deviceModel}",
                                style: TextStyleConstants.text10().copyWith(
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Serial No: ",
                            style: TextStyleConstants.text10().copyWith(
                              color: Colors.black45,
                            ),
                            children: [
                              TextSpan(
                                text: "${model.serialNumber}",
                                style: TextStyleConstants.text10().copyWith(
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    // width: 100,
                    child: Row(
                      children: [
                        RatingBar(
                          initialRating: model.health!/2,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 3,
                          itemSize: 20,
                          // itemPadding:
                          //     EdgeInsets.symmetric(horizontal: 4.0),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                          ratingWidget: RatingWidget(
                            full: Icon(
                              Icons.heart_broken,
                              color: ColorConstants.red,
                              size: 10,
                            ),
                            half: Icon(
                              Icons.heart_broken,
                              color: ColorConstants.red,
                              size: 10,
                            ),
                            empty: Icon(
                              Icons.heart_broken_outlined,
                              color: ColorConstants.red,
                              size: 10,
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        Text("${model.health!/2}/3",style: TextStyleConstants.text10(),)
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              child??SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
