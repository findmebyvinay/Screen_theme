import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screen_theme/provider/theme_changer.dart';
import 'package:screen_theme/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>ThemeChanger())
      ],
      child: Builder(
        builder: (BuildContext context) {
         final themeChanger =Provider.of<ThemeChanger>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            themeMode:themeChanger.themeMode ,
           
            darkTheme: ThemeData(
              brightness:Brightness.dark,
              primarySwatch: Colors.pink,
              primaryColor:Colors.red
            ),
            home:Screen()
          );
        }
      ),
    );
  }
}

