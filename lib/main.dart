import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home.dart';
import 'model_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ModelTheme(),
      child: Consumer<ModelTheme>(
          builder: (context, ModelTheme themeNotifier, child) {
        return MaterialApp(
          title: 'ToDo App',
          theme: themeNotifier.isDark
              ? ThemeData(
                  brightness: Brightness.dark,
                )
              : ThemeData(
                  brightness: Brightness.light,
                  primaryColor: Colors.deepPurple,
                  primarySwatch: Colors.deepPurple,
                ),
          debugShowCheckedModeBanner: false,
          home: const Home(),
        );
      }),
    );
  }
}
