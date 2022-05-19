import 'package:flutter/material.dart';
import 'package:playground/application/theme_service.dart';
import 'package:playground/screens/theme_animation.dart';
import 'package:playground/theme/theme.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
        home: ThemeAnimation(),
      );
    });
  }
}
