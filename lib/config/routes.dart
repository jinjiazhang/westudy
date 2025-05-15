import 'package:flutter/material.dart';
import '../screens/home/home_screen.dart';

// 路由名称常量
class RouteNames {
  static const String home = '/';
  // 可以添加更多路由名称
}

// 应用路由配置
class AppRoutes {
  // 路由表
  static Map<String, WidgetBuilder> routes = {
    RouteNames.home: (context) => HomeScreen(),
    // 可以添加更多路由
  };

  // 未知路由处理
  static Route<dynamic> onUnknownRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        body: Center(
          child: Text('页面不存在: ${settings.name}'),
        ),
      ),
    );
  }
}
