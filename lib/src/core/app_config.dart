import 'package:project_white_label/src/core/colors.dart';

class AppConfig {
  final String? appName;
  final String? appLogo;
  final String? appApiUrl;
  final String? appWelcomeMessage;
  final ColorModel? appColors;

  AppConfig(
      {this.appName,
      this.appLogo,
      this.appApiUrl,
      this.appWelcomeMessage,
      this.appColors});

  factory AppConfig.fromJson(Map<String, dynamic> json) {
    return AppConfig(
      appName: json['appName'],
      appLogo: json['logo'],
      appApiUrl: json['apiEndpoint'],
      appWelcomeMessage: json['welcomeMessage'],
      appColors: ColorModel.fromJson(json['appColors']),
    );
  }
}
