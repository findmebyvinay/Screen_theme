import'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screen_theme/provider/theme_changer.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('ThemeMode'),
        centerTitle: true,
        backgroundColor: Colors.amber[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text('change your screen!😎',style: TextStyle(
            fontSize: 30,
            color: Colors.amber[300],
            fontStyle: FontStyle.italic
           ),),
           const SizedBox(height: 20,),
           RadioListTile(
            title: Text('light'),
            value:ThemeMode.light ,
            groupValue:themeChanger.themeMode ,
             onChanged:themeChanger.setTheme),
             const SizedBox(height: 10,),
              RadioListTile(
            title: Text('Dark'),
            value:ThemeMode.dark ,
            groupValue:themeChanger.themeMode ,
             onChanged:themeChanger.setTheme),
             Row(children: [
              Text('Your done!')
             ],)
             
          ],
        ),
      ),
    );
    }
}