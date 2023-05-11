import 'package:flutter/material.dart';
import 'package:to_do_c8_sutrday/home_layout/home_layout.dart';
import 'package:to_do_c8_sutrday/shared_files/styles/my_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: MyThemeData.lightTheme,
      themeMode: ThemeMode.light,
      initialRoute: home_layout.routname,
      routes: {
        home_layout.routname: (context) => home_layout(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
