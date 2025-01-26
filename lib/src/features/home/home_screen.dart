import 'package:flutter/material.dart';
import 'package:project_white_label/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appConfig.appColors?.primaryColor ?? Colors.white,
        title: Text(
          appConfig.appName ?? '',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Center(
          child: Column(
        spacing: 16,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(appConfig.appWelcomeMessage ?? ''),
          ElevatedButton(
            onPressed: () {
              showAdaptiveDialog(
                barrierDismissible: true,
                context: context,
                builder: (context) => AlertDialog.adaptive(
                  content: Column(
                    children: [
                      Row(
                        children: [
                          Text("Api url: ${appConfig.appApiUrl}"),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            child: Text("See More Datas"),
          ),
        ],
      )),
    );
  }
}
