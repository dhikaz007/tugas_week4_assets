import 'package:flutter/material.dart';
import 'package:tugas_week4_assets/image_list.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Memanggil class ImageList
      home: ImageList(),
    );
  }
}