import 'package:flutter/material.dart';
import 'package:map_example/core/components/theme_components.dart';
import 'package:map_example/routes/my_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Map Example',
        theme: MyTheme.mytheme,
        onGenerateRoute: MyRoute.instance.myRoutes,
        initialRoute: '/home');
  }
}
