import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/b02_page_ui.dart';
import 'package:flutter_speed_ui_app/views/b03_page_ui.dart';

class B01PageUI extends StatefulWidget {
  const B01PageUI({super.key});

  @override
  State<B01PageUI> createState() => _B01PageUIState();
}

class _B01PageUIState extends State<B01PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // วงกลมแรก มีแค่ขอบ
            Positioned(
              top: -150,
              left: 40,
              right: -170,
              child: Container(
                width: 500,
                height: 500,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  border: Border.all(
                    color: Color.fromRGBO(239, 240, 255, 0.5), // ขอบสีม่วงจาง
                    width: 3,
                  ),
                ),
              ),
            ),

            // วงกลมที่สอง วงกลมพื้นทึบ
            Positioned(
              top: -160,
              right: -200,
              left: 140,
              child: Container(
                width: 500,
                height: 500,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(239, 240, 255, 0.6), // สีพื้นอ่อน
                ),
              ),
            ),

            // สี่เหลี่ยมแรก มีแค่ขอบ
            Positioned(
              bottom: 0,
              left: -140,
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Color.fromRGBO(239, 240, 255, 0.5),
                    width: 3,
                  ),
                ),
              ),
            ),

            // ✅ สี่เหลี่ยมที่ 2 — หมุน 45 องศา
            Positioned(
              bottom: -30,
              left: -100,
              child: Transform.rotate(
                angle: 0.450, // เอียง
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: Color.fromRGBO(239, 240, 255, 0.5),
                      width: 3,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40,
              ),
              child: Column(
                children: [
                  SizedBox(height: 70),
                  Center(
                    child: Image.asset(
                      'assets/images/imgb1.png',
                      width: 500,
                    ),
                  ),
                  SizedBox(
                    height: 85,
                  ),
                  Text(
                    'Discover Your',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1F41BB),
                    ),
                  ),
                  Text(
                    'Dream Job here',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1F41BB),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Explore all the existing job roles based on your interest and study major',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 90,
                  ),

                  // ปุ่ม------------------------------
                  Row(
                    children: [
                      Expanded(
                        // ปุ่มซ้าย
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => B02PageUI(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size.fromHeight(55),
                            backgroundColor: Color(0xff1F41BB),
                            padding: EdgeInsets.symmetric(vertical: 16),
                            elevation: 2, // ความสูงของเงา
                            shadowColor:
                                Color.fromRGBO(31, 65, 187, 0.5), // สีของเงา

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),

                      // ปุ่มขวา
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => B03PageUI(),
                              ),
                            );
                          },
                          child: Text(
                            'Register',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black, // ปรับสีตามดีไซน์
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
