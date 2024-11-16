import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'custom_functions.dart';
import 'pages/home_page_widget.dart';
//import 'pages/trip_widget.dart';
import 'theme.dart';

void main() {
  // await Supabase.initialize(
  //   url: 'https://gbktozasdssjbueemfdt.supabase.co',
  //   anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdia3RvemFzZHNzamJ1ZWVtZmR0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE3NzYwODYsImV4cCI6MjA0NzM1MjA4Nn0.lrpdw--LwFWrlXX6MTorj63-qDh_upeVKb_B_95JruQ',
  // );
  // final data = await readCsv("data.csv");
  runApp(
    FlutterFlowTheme(
      themeData: ThemeData.light(), // Set your theme data here
      headlineMedium: const TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
      headlineSmall: const TextStyle(fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
      labelMedium: const TextStyle(fontSize: 14, color: Color.fromARGB(255, 0, 0, 0)),
      displaySmall: const TextStyle(fontSize: 12, color: Color.fromARGB(255, 0, 0, 0)),
      titleSmall: const TextStyle(fontSize: 12, color: Color.fromARGB(255, 0, 0, 0)),
      labelLarge: const TextStyle(fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
      titleLarge: const TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
      labelSmall: const TextStyle(fontSize: 10, color: Color.fromARGB(255, 0, 0, 0)),
      alternate: Colors.green,
      accent1: Colors.blue,
      bodyMedium: const TextStyle(fontSize: 18),
      bodySmall: const TextStyle(fontSize: 14),
      info: Colors.grey,
      primary: const Color.fromARGB(255, 75, 57, 239),
      primaryText: const Color.fromARGB(255, 0, 0, 0),
      secondaryText: const Color.fromARGB(255, 87, 99, 108),
      primaryBackground: const Color.fromARGB(255, 241, 244, 248),
      secondary: const Color.fromARGB(255, 57, 210, 192),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //debugShowCheckedModeBanner: false,
      //theme: ThemeData(fontFamily: 'Poppins'),
      home: HomePageWidget()
      //home: TripWidget(key: Key("fds"), tripNum: 1,)
    );
  }
}
