import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'app.dart';

List<CameraDescription> cameras = [];


Future<void> main() async {
  // Fetch the available cameras before initializing the app.
  try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
  } on CameraException catch (e) {
    print('Error in fetching the cameras: $e');
  }
  runApp(const MyApp());
}