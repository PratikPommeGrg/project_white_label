import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_white_label/app.dart';
import 'package:project_white_label/src/core/app_config.dart';

// final dotEnv = DotEnv();
late final AppConfig appConfig;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // print("appflavor is :: ========= ${dotEnv.get('appFlavor')}");
  // print("appflavor is dirct:: ========= $appFlavor");

  // await dotEnv.load(fileName: "assets/configs/config_$appFlavor.json");
  final configString =
      await rootBundle.loadString("assets/configs/config_$appFlavor.json");
  appConfig = AppConfig.fromJson(jsonDecode(configString));

  runApp(const ProjectWhiteLabel());
}
