import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example4/provider/theme_changer_provider.dart';

class ThemeChange extends StatelessWidget {
   ThemeChange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build');
    final themeChanger = Provider.of<ThemeChangerProvider>(context,listen: false);
      return  Scaffold(
          appBar: AppBar(
            title: Text('Theme Changer'),
          ),
          body: Consumer<ThemeChangerProvider>(
            builder: (context,value,child) {
              return Column(
                children: [
                  RadioListTile<ThemeMode>(
                    title: Text('Light Mode'),
                    value: ThemeMode.light,
                    groupValue: value.themeMode,
                    onChanged: value.setTheme,
                  ),
                  RadioListTile(
                      title: Text('Dark Mode'),
                      value: ThemeMode.dark,
                      groupValue: value.themeMode,
                      onChanged: value.setTheme
                  ),
                  RadioListTile(
                      title: Text('System Mode'),
                      value: ThemeMode.system,
                      groupValue: value.themeMode,
                      onChanged: value.setTheme
                  ),
                  const Icon(
                    Icons.favorite,
                  )
                ],
              );
            },
          )
      );


  }
}
