import 'package:flutter/material.dart';
// 导入配置文件
import 'config/routes.dart';
import 'config/theme.dart';
import 'constants/app_constants.dart';

void main() {
  runApp(const WeStudyApp());
}

class WeStudyApp extends StatelessWidget {
  const WeStudyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppInfo.appName,
      theme: AppTheme.lightTheme,
      routes: AppRoutes.routes,
      initialRoute: RouteNames.home,
      onUnknownRoute: AppRoutes.onUnknownRoute,
      debugShowCheckedModeBanner: false, // 去掉右上角的Debug标签
    );
  }
}
