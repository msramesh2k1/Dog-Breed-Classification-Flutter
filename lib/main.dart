import 'package:flutter/material.dart';

import 'homepage.dart';

import 'package:camera/camera.dart';



List<CameraDescription>? cameras;
Future<void> main()  async {
  WidgetsFlutterBinding.ensureInitialized();  
  cameras = await availableCameras();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dog Breed Classifier',
      theme: ThemeData(  
        primarySwatch: Colors.blue,
      ),
      home: const HomePage()
    );
  }
}

