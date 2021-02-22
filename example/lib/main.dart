import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:mefun_camera/mefun_camera.dart';
import 'package:mefun_camera_example/flutter_camera_page.dart';

List<CameraDescription> cameras = [];
Future<void> main() async {
  // Fetch the available cameras before initializing the app.
  try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
  } on CameraException catch (e) {
    logError(e.code, e.description);
  }
  runApp(MaterialApp(
    home: CameraExampleHome(
      cameras: cameras,
    ),
  ));
}
