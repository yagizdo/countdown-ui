import 'package:flutter/material.dart';
import 'package:fomodoro/Screens/home_screen.dart';
import 'package:fomodoro/Theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<ThemeProvider>(
      create: (_) => ThemeProvider(),
      builder: (context, snapshot) {
        return const MyApp();
      }));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, theme, child) {
      return MaterialApp(
        title: 'Fomodoro',
        debugShowCheckedModeBanner: false,
        theme: theme.darkTheme,
        home: HomeScreen(),
      );
    });
  }
}
