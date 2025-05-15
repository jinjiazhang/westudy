import 'package:flutter/material.dart';
// 应用入口，导入主页
import 'screens/home/home_screen.dart';

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
        primarySwatch: Colors.blue, // 主题色可根据需要自定义
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(), // 主页
      debugShowCheckedModeBanner: false, // 去掉右上角的Debug标签
    );
  }
}
