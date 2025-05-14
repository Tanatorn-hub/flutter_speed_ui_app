import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/a02_page_ui.dart';

class A01PageUI extends StatefulWidget {
  const A01PageUI({super.key});

  @override
  State<A01PageUI> createState() => _A01PageUIState();
}

class _A01PageUIState extends State<A01PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
        ),
        child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF89AEE),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                      ),
                    ),
                    height: 500,
                    width: double.infinity,
                  ),
                  Image.asset(
                    'assets/images/imga1.png',
                    height: 500,
                    width: 600,
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Dixcover Your',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF464444),
                ),
              ),
              Text(
                'Own Dream House',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF464444),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                ),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et. Eget viverra urna, vestibulum egestas faucibus egestas. Sagittis nam velit volutpat eu nunc.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                height: 90,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                // ปุ่ม ------------------------------------------------------
                child: Row(
                  children: [
                    // ปุ่มซ้าย (Sign in) — ตัดขอบด้านขวา
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // ทำบางอย่าง
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size.fromHeight(55),
                          backgroundColor: Color(0xffF89AEE),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topRight: Radius.circular(0), // เหลี่ยม
                              bottomRight: Radius.circular(0), // เหลี่ยม
                            ),
                          ),
                        ),
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    // ปุ่มขวา (Register) — ตัดขอบด้านซ้าย
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => A02PageUI(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size.fromHeight(55),
                          backgroundColor: Color(0xffF3F3F3),
                          foregroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              topLeft: Radius.circular(0), // เหลี่ยม
                              bottomLeft: Radius.circular(0), // เหลี่ยม
                            ),
                          ),
                        ),
                        child: Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF464444),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
