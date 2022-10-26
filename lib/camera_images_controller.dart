import 'dart:developer';

import 'package:camera/camera.dart';
import 'package:get/get.dart';

class CameraImagesController {
  RxList<XFile> imageList = <XFile>[].obs;
  Future<void> addImage(XFile image) async {
    imageList.add(image);
    log("CameraImagesController: ${imageList.length}");
  }
  void removeImage(int index) => imageList.removeRange(index, index);
}