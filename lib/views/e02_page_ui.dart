// ignore_for_file: sort_child_properties_last, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/e03_page_ui.dart';
import 'package:flutter_speed_ui_app/views/e04_page_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class E02PageUI extends StatefulWidget {
  const E02PageUI({super.key});

  @override
  State<E02PageUI> createState() => _E02PageUIState();
}

class _E02PageUIState extends State<E02PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'assets/images/imge2.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Login to your account',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Enter email or phone',
                    hintText: 'Input Email or Phone',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    bottom: 20,
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Password',
                      hintText: 'Input Password',
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.visibility_off,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      // code เปิดหน้าจอแบบย้อนได้
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => E04PageUI(),
                        ),
                      );
                    },
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                // ปุ่ม gradient----------------------------------------------------
                Container(
                  // กำหนดความกว้างของ Container ให้เท่ากับความกว้างของหน้าจอ
                  width: MediaQuery.of(context).size.width,
                  // กำหนดความสูงของ Container เป็น 55 พิกเซล
                  height: 55,
                  decoration: BoxDecoration(
                    // ใช้ Gradient ไล่เฉดสีแนวนอนจากส้มไปส้มเข้ม
                    gradient: LinearGradient(
                      colors: [Color(0xFFFFC52A), Color(0xFFF69515)],
                      begin: Alignment.centerLeft, // เริ่มต้นไล่สีจากด้านซ้าย
                      end: Alignment.centerRight, // จบที่ด้านขวา
                    ),
                    // ทำให้มุมของ Container โค้งมน
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  // ภายใน Container ใส่ ElevatedButton ไว้ด้านใน
                  child: ElevatedButton(
                    // กำหนดฟังก์ชันที่จะทำงานเมื่อปุ่มถูกกด (ตอนนี้ยังว่างไว้)
                    onPressed: () {},
                    // ปรับแต่งสไตล์ของปุ่ม
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors
                          .transparent, // พื้นหลังปุ่มให้โปร่งใส เพื่อโชว์ gradient
                      shadowColor: Colors.transparent, // ไม่มีเงา
                      shape: RoundedRectangleBorder(
                        // ทำให้ปุ่มมีมุมโค้งเหมือนกับ Container
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                //เส้นแบ่ง------------------------------------------------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              const Color.fromARGB(255, 249, 108, 7),
                              const Color.fromARGB(255, 244, 208, 147),
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
                        'OR',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1, // กำหนดความสูงให้เหมือนเส้น
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              const Color.fromARGB(255, 249, 108, 7),
                              const Color.fromARGB(255, 244, 208, 147),
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
                  height: 20,
                ),

                // ปุ่ม------------------------------------------------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // google
                    Image.asset(
                      'assets/images/imge3.png',
                    ),
                    // facebook
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 40,
                        right: 40,
                      ),
                      child: Image.asset(
                        'assets/images/imge4.png',
                      ),
                    ),
                    // Apple
                    Image.asset(
                      'assets/images/imge5.png',
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? "),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => E03PageUI(),
                          ),
                        );
                      },
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          color: Colors.orange,
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
    );
  }
}
