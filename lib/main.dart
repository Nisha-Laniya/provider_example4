import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example4/provider/theme_changer_provider.dart';
import 'package:provider_example4/screens/theme_change.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeChangerProvider(),
      child: Builder(
          builder: (BuildContext context) {
            final themeChanger = Provider.of<ThemeChangerProvider>(context);
            return MaterialApp(
                debugShowCheckedModeBanner: false,
                themeMode: themeChanger.themeMode,
                theme: ThemeData(
                  brightness: Brightness.light,
                  primarySwatch: Colors.lightGreen,
                ),
                darkTheme: ThemeData(
                    brightness: Brightness.dark,
                    accentColor: Colors.pink,
                    appBarTheme: AppBarTheme(backgroundColor: Colors.pinkAccent),
                    iconTheme: IconThemeData(
                      color: Colors.pink,
                    )
                ),
                home: ThemeChange(),

              );
            })


      );
  }
}
