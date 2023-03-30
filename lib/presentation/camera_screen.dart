import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import 'package:image_picker/image_picker.dart';
import 'package:medqcx/router/router.dart';
import 'package:medqcx/router/router.gr.dart';
import 'package:permission_handler/permission_handler.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  XFile? pickedfile;
  double quality = 1;

  late File pFile;

  File? nativeImage;

  File? imageCompressFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          TextButton(
              onPressed: () {
                _takeImage();
              },
              child: Text("Take Image")),
          Text("Original Image"),
          if (pickedfile != null)
            TextButton(
                onPressed: () {
                  appRouter.push(ImgPreviewRoute(
                    title: "Original image",
                    file: File(pickedfile!.path),
                  ));
                },
                child: Text("Preview original Image")),
          Text("Flutter Native Image"),
          if (nativeImage != null)
            TextButton(
                onPressed: () {
                  appRouter.push(ImgPreviewRoute(
                    title: "Native image",
                    file: nativeImage!,
                  ));
                },
                child: Text("Preview native "
                    "Compress Image")),
          Text("Flutter Image Compress Image"),
          if (imageCompressFile != null)
            TextButton(
                onPressed: () {
                  appRouter.push(ImgPreviewRoute(
                    title: "Image Compressed image",
                    file: imageCompressFile!,
                  ));
                },
                child: Text("Preview Image Compress "
                    "Image")),
          SizedBox(
            height: 40,
          ),
          Column(
            children: [
              Text("quality=${quality.round()}"),
              Slider(
                max: 100,
                min: 1,
                value: quality,
                label: "$quality",
                onChanged: (v) {
                  setState(() {
                    quality = v;
                  });
                },
              ),
            ],
          )
        ],
      ),
    ));
  }

  void _takeImage() async {
    var persmission = Permission.camera;
    final result = await persmission.isGranted;
    var picker = ImagePicker();
    if (result) {
      pickedfile =
          await picker.pickImage(source: ImageSource.camera, imageQuality: 50);
      pFile = File(pickedfile!.path);
      nativeImage = await FlutterNativeImage.compressImage(pFile.path,
          quality: quality.round());
      final target = "${pFile.absolute.path}2.jpg";
      imageCompressFile = await FlutterImageCompress.compressAndGetFile(
        pFile.absolute.path, target,
        quality: quality.round(),
        // rotate: 180,
      );
      setState(() {});
    } else {
      await persmission.request();
    }
  }
}
