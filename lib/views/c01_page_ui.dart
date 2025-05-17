// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/c02_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class C01PageUI extends StatefulWidget {
  const C01PageUI({super.key});

  @override
  State<C01PageUI> createState() => _C01PageUIState();
}

class _C01PageUIState extends State<C01PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: Stack(
            children: [
              // ✅ พื้นหลังภาพ เต็มจอ
              Positioned.fill(
                child: Image.asset(
                  'assets/images/imgc1.png',
                  fit: BoxFit.cover, // เต็มหน้าจอครอบไว้
                ),
              ),
              // ✅ ครอบด้วย SafeArea + Center เพื่อให้อยู่กลางจอ
              SafeArea(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      mainAxisSize:
                          MainAxisSize.min, // ให้แนวตั้งพอดีกับเนื้อหา
                      crossAxisAlignment:
                          CrossAxisAlignment.center, //อยู่กลางแนวนอน
                      children: [
                        SizedBox(
                          height: 200,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => C02PageUI(),
                              ),
                            );
                          },
                          child: Image.asset(
                            'assets/images/imgc2.png',
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'HOPE FOR',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 45,
                            fontWeight: FontWeight.w500,
                            height: 1.0,
                          ),
                        ),
                        Text(
                          'HUMANITY',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.w900,
                            height: 1.0,
                          ),
                        ),
                        SizedBox(height: 200),
                        Text(
                          'Welcome to',
                          style: TextStyle(
                            color: Color(0xff005014),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            height: 1.0,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'hope for humanity',
                          style: TextStyle(
                            color: Color(0xff005014),
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
