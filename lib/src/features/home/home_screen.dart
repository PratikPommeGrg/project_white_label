import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Name"),
      ),
      body: Center(
          child: Column(
        spacing: 16,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Welcome"),
          ElevatedButton(
            onPressed: () {
              showAdaptiveDialog(
                barrierDismissible: true,
                context: context,
                builder: (context) => AlertDialog.adaptive(
                  content: Text("data"),
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
