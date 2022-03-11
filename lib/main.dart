import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:fomodoro/Screens/home_screen.dart';
import 'package:fomodoro/Theme/theme_provider.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var _themeMode = await ThemeProvider().readData('themeMode');
  runApp(ChangeNotifierProvider<ThemeProvider>(
      create: (_) => ThemeProvider(),
      builder: (context, snapshot) {
        return MyApp(
          themeMode: _themeMode,
        );
      }));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key, this.themeMode}) : super(key: key);

  var themeMode;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, theme, child) {
      return MaterialApp(
        title: 'Fomodoro',
        debugShowCheckedModeBanner: false,
        theme: theme.getTheme(),
        home: AnimatedSplashScreen(
          splash: Icons.home,
          backgroundColor:
              themeMode == 'light' ? HexColor('#D047FF') : Colors.red,
          nextScreen: HomeScreen(),
          duration: 3000,
        ),
      );
    });
  }
}
