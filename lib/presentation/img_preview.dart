import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:share_plus/share_plus.dart';

class ImgPreview extends StatefulWidget {
  final String title;
  final File file;
  const ImgPreview({Key? key, required this.title, required this.file})
      : super(key: key);

  @override
  State<ImgPreview> createState() => _ImgPreviewState();
}

class _ImgPreviewState extends State<ImgPreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Image.file(widget.file),
          SizedBox(
            height: 40,
          ),
          Text("${widget.file.lengthSync()} Bytes"),
          SizedBox(height: 20),
          TextButton(
            onPressed: () async {
              await Share.shareXFiles([XFile(widget.file.path)],
                  text: widget.title);
            },
            child: Text("Share"),
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () async {
              GallerySaver.saveImage(widget.file.path).then((value) =>
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Downloaded"))));
            },
            child: Text("Download"),
          ),
        ],
      ),
    );
  }
}
