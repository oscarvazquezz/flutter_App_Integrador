import 'package:flutter/material.dart';
import 'Router/router_provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      initialRoute: '/',
      onGenerateRoute: RouterProvider.generateRoute,

      builder: (context, child) => ResponsiveWrapper.builder(
          child,
          
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(720, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ],),

    );
  }
}
