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
        title: Text("Theme Mode Demo"),
        centerTitle: true,
        actions: [
          ChangeThemeButtonWidget(),
        ],
      ),
      body: Center(
        child: Text('hallo $text!',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
