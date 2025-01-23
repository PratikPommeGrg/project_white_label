import 'package:flutter/material.dart';
import 'package:project_white_label/src/features/splash/splash_screen.dart';

class ProjectWhiteLabel extends StatelessWidget {
  const ProjectWhiteLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}