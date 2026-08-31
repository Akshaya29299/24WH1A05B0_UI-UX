import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkTheme
          ? ThemeData.dark()
          : ThemeData.light().copyWith(
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.redAccent,
              ),
            ),
      home: Builder(
        builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                isDarkTheme ? 'Dark Theme(24WH1A05B0_AkshayaReddy)' : 'Light Theme(24WH1A05B0_AkshayaReddy)',
              ),
            ),
            body: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // Uncomment to center the widgets vertically.
              children: <Widget>[
                OutlinedButton.icon(
                  onPressed: () {},
                  label: const Text('Button'),
                  icon: isDarkTheme
                      ? const Icon(Icons.dark_mode_rounded)
                      : const Icon(Icons.light_mode_rounded),
                ),
                const SizedBox(height: 20),
                SwitchListTile(
                  title: const Text('Dark Theme'),
                  value: isDarkTheme,
                  onChanged: (value) {
                    setState(() {
                      isDarkTheme = value;
                    });
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
