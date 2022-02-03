import 'package:flutter/material.dart';
import 'package:whatsapp_clone_rivaan_ranawat/colors.dart';
import 'package:whatsapp_clone_rivaan_ranawat/responsive/responsive_layout.dart';
import 'package:whatsapp_clone_rivaan_ranawat/screens/mobile_screen_layout.dart';
import 'package:whatsapp_clone_rivaan_ranawat/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor,),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
