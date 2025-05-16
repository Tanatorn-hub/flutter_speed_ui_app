import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/b02_page_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class B03PageUI extends StatefulWidget {
  const B03PageUI({super.key});

  @override
  State<B03PageUI> createState() => _B03PageUIState();
}

class _B03PageUIState extends State<B03PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
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
                color: Color.fromRGBO(239, 240, 255, 0.3), // สีพื้นอ่อน
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100),
                Center(
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff1F41BB),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                Text(
                  "Create an account so you can explore all the existing jobs",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 60,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xff1F41BB),
                        // สีขอบปกติ
                        width: 2.0,
                      ),
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Color(0xFF666161),
                      fontWeight: FontWeight.bold,
                    ),

                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ), // ปรับขนาดความสูง
                    fillColor: Color(0xffF1F4FF), // สีพื้นหลัง
                    filled: true, // เปิดใช้งานสีพื้นหลัง
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.transparent, // สีขอบปกติ
                        width: 2.0,
                      ),
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Color(0xFF666161),
                      fontWeight: FontWeight.bold,
                    ),

                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ), // ปรับขนาดความสูง
                    fillColor: Color(0xffF1F4FF), // สีพื้นหลัง
                    filled: true, // เปิดใช้งานสีพื้นหลัง
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.transparent, // สีขอบปกติ
                        width: 2.0,
                      ),
                    ),
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(
                      color: Color(0xFF666161),
                      fontWeight: FontWeight.bold,
                    ),

                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ), // ปรับขนาดความสูง
                    fillColor: Color(0xffF1F4FF), // สีพื้นหลัง
                    filled: true, // เปิดใช้งานสีพื้นหลัง
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                // ปุ่มมีเงา ----------------------------------------------
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(125, 31, 65, 187),
                        blurRadius: 7,
                        spreadRadius: 1,
                        offset: Offset(0, 5),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      // ฟังก์ชันเมื่อปุ่มถูกกด
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff1F41BB),
                      elevation: 0, // ปิดเงาปุ่มเดิม
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                    ),
                    child: Text(
                      'Sign up',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => B02PageUI(),
                      ),
                    );
                  },
                  child: Text(
                    'Already have an account',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xff494949),
                    ),
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                Text(
                  'Or continue with',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Color(0xff1F41BB),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                        backgroundColor: Colors.grey.shade200,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: Icon(
                        FontAwesomeIcons.google,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        backgroundColor: Colors.grey.shade200,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: Icon(
                        Icons.facebook_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        backgroundColor: Colors.grey.shade200,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: Icon(
                        Icons.apple,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
