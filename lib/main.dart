import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geppetto/pages/home.dart';
import 'package:geppetto/utils/app_responsive/app_responsive_widget.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent, // navigation bar color
        statusBarColor: Colors.transparent, // status bar color
        statusBarIconBrightness: Brightness.dark, // status bar icons' color
        systemNavigationBarIconBrightness:
            Brightness.dark, //navigation bar icons' color
      ),
    );
    return MaterialApp.router(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (context, child) {
        return const AppResponsiveWidget(
          child: MyHomePage(title: 'Flutter Demo Home Page'),
        );
      },
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
