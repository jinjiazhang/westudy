import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(WeStudyApp());
}

class WeStudyApp extends StatelessWidget {
  const WeStudyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WeStudy',
      theme: ThemeData(
        primarySwatch: Colors.blue, // 你可以自定义主题颜色
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false, // 去掉右上角的Debug标签
    );
  }
}
