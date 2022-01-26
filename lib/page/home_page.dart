import 'package:dark_and_light_theme/page/dashboard.dart';
import 'package:dark_and_light_theme/provider/theme_provider.dart';
import 'package:dark_and_light_theme/widget/changethmebutton_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? "DarkTheme"
        : "LightTheme";
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme Mode Demo"),
        centerTitle: true,
        actions: const [
          ChangeThemeButtonWidget(),
        ],
      ),
      body: Column(children: [
        Text(
          'hallo $text!',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const Text(
          'Bangladesh',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Dashboard(),
                ),
              );
            },
            child: const Text('Next'))
      ]),
    );
  }
}
