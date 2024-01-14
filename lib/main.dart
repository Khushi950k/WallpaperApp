import 'package:flutter/material.dart';
import 'package:wallpaper/Media_Query_and_Orientation/query.dart';
import 'package:wallpaper/Walllpaper%20Design/Wallpaper.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Wallpaper(),
    );
  }
}
