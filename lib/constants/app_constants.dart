// 应用常量配置文件

// 应用基本信息
class AppInfo {
  static const String appName = 'WeStudy';
  static const String appVersion = '1.0.0';
  static const String appDescription = '一个学习故事阅读的应用';
}

// 尺寸常量
class AppSizes {
  static const double paddingSmall = 8.0;
  static const double paddingMedium = 16.0;
  static const double paddingLarge = 24.0;
  
  static const double borderRadiusSmall = 4.0;
  static const double borderRadiusMedium = 8.0;
  static const double borderRadiusLarge = 12.0;
  
  static const double iconSizeSmall = 16.0;
  static const double iconSizeMedium = 24.0;
  static const double iconSizeLarge = 32.0;
}

// 持久化存储键
class StorageKeys {
  static const String userToken = 'user_token';
  static const String userId = 'user_id';
  static const String userProfile = 'user_profile';
  static const String appSettings = 'app_settings';
  static const String readingHistory = 'reading_history';
}

// API 相关常量
class ApiConstants {
  static const String baseUrl = 'https://api.westudy.com'; // 示例 API 地址
  static const int timeoutDuration = 30; // 请求超时时间（秒）
  
  // API 端点
  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String stories = '/stories';
  static const String userProfile = '/user/profile';
}

// 资源路径
class AssetPaths {
  static const String imagesDir = 'assets/images/';
  static const String iconsDir = 'assets/icons/';
  static const String animationsDir = 'assets/animations/';
  
  // 常用图片
  static const String logoImage = '${imagesDir}logo.png';
  static const String placeholderImage = '${imagesDir}placeholder.png';
  static const String defaultAvatar = '${imagesDir}default_avatar.png';
}
