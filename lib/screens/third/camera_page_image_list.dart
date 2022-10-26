import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirst/camera_images_controller.dart';
import 'package:get/get.dart';

class CameraPageImageList extends StatelessWidget {
  const CameraPageImageList({super.key});

  Widget getWidgets (List<XFile> imageList) {
    return Row(children: imageList.map<Container>((image) =>
        Container(
          width: 50,
          height: 50,
          child: Image.file(File(image.path)),
          ),
        ).toList()
        );
  }

  @override
  Widget build(BuildContext context) {
    final CameraImagesController getc = Get.put(CameraImagesController());

    return Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 10),
          height: 60,
          child: Obx(() {
            return getWidgets(getc.imageList);
          })
        ),
    );

  }
}