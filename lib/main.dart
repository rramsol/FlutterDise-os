import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterappdiseniios/pages/basico_page.dart';
import 'package:flutterappdiseniios/pages/botones_page.dart';
import 'package:flutterappdiseniios/pages/scroll_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ));
    
    return MaterialApp(
      title: 'Diseños',
      debugShowCheckedModeBanner: false,
      initialRoute: 'botones',
      routes: {
        'basico' : ( BuildContext context ) => BasicoPage(),
        'scroll' : ( BuildContext context ) => ScrollPage(),
        'botones' : ( BuildContext context ) => BotonesPage(),
      },
    );
  }
}
