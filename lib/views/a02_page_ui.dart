import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/a01_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class A02PageUI extends StatefulWidget {
  const A02PageUI({super.key});

  @override
  State<A02PageUI> createState() => _A02PageUIState();
}

class _A02PageUIState extends State<A02PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 100,
          left: 40,
          right: 40,
        ),
        child: Center(
          child: Column(
            children: [
              Text(
                'Welcome Back',
                style: GoogleFonts.outfit(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF464444),
                ),
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et.',
                textAlign: TextAlign.center,
                style: GoogleFonts.outfit(
                  fontSize: 14,
                  color: Color(0xFF464444),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  hintText: 'Username , Email & Phone Number',
                  hintStyle: GoogleFonts.outfit(
                    textStyle: TextStyle(
                      color: Color(0xFF666161),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  fillColor: Colors.grey[200], // สีพื้นหลัง
                  filled: true, // เปิดใช้งานสีพื้นหลัง
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  hintText: 'Password',
                  hintStyle: GoogleFonts.outfit(
                    textStyle: TextStyle(
                      color: Color(0xFF666161),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  fillColor: Colors.grey[200], // สีพื้นหลัง
                  filled: true, // เปิดใช้งานสีพื้นหลัง
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    'Forget Password?',
                    style: GoogleFonts.outfit(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF464444),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // ปุ่มมีเงา ----------------------------------------------
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.12),
                      offset: Offset(0, 2),
                      blurRadius: 1,
                      spreadRadius: 0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => A01PageUI(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFF89AEE),
                    fixedSize: Size(MediaQuery.of(context).size.width, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Sing in',
                    style: GoogleFonts.outfit(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              //เส้นแบ่ง------------------------------------------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 3,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffF89AEE),
                            Color(0x00F89AEE),
                          ], // ไล่จากสีส้มไปสีส้มเข้ม
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                        ),
                      ), // กำหนดสีของเส้น
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Or Sign up With',
                      style: TextStyle(
                        color: Color(0xff555252),
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 3, // กำหนดความหนาเส้น
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffF89AEE),
                            Color(0x00F89AEE),
                          ], // ไล่จากสีส้มไปสีส้มเข้ม
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ), // กำหนดสีของเส้น
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              // ปุ่ม------------------------------------------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // google
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xFFF89AEE), // ขอบชมพู
                        width: 1,
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/imge3.png',
                    ),
                  ),
                  // facebook
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xFFF89AEE), // ขอบชมพู
                          width: 1,
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/imge4.png',
                      ),
                    ),
                  ),
                  // Apple
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xFFF89AEE), // ขอบชมพู
                        width: 1,
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/imge5.png',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
