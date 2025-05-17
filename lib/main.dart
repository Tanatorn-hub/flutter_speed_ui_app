// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/a01_page_ui.dart';
import 'package:flutter_speed_ui_app/views/a02_page_ui.dart';
import 'package:flutter_speed_ui_app/views/b01_page_ui.dart';
import 'package:flutter_speed_ui_app/views/b02_page_ui.dart';
import 'package:flutter_speed_ui_app/views/b03_page_ui.dart';
import 'package:flutter_speed_ui_app/views/d01_page_ui.dart';
import 'package:flutter_speed_ui_app/views/d02_page_ui.dart';
import 'package:flutter_speed_ui_app/views/d03_page_ui.dart';
import 'package:flutter_speed_ui_app/views/d04_page_ui.dart';
import 'package:flutter_speed_ui_app/views/d05_page_ui.dart';
import 'package:flutter_speed_ui_app/views/e01_page_ui.dart';
import 'package:flutter_speed_ui_app/views/e02_page_ui.dart';
import 'package:flutter_speed_ui_app/views/e03_page_ui.dart';
import 'package:flutter_speed_ui_app/views/e04_page_ui.dart';
import 'package:flutter_speed_ui_app/views/e05_page_ui.dart';
import 'package:flutter_speed_ui_app/views/e06_page_ui.dart';
import 'package:flutter_speed_ui_app/views/home_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    FlutterSpeedUI(),
  );
}

// ----------------------------------------------
class FlutterSpeedUI extends StatefulWidget {
  const FlutterSpeedUI({super.key});

  @override
  State<FlutterSpeedUI> createState() => _FlutterSpeedUIState();
}

class _FlutterSpeedUIState extends State<FlutterSpeedUI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: D05PageUI(),
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
