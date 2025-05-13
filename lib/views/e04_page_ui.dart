import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/e03_page_ui.dart';
import 'package:flutter_speed_ui_app/views/e05_page_ui.dart';

class E04PageUI extends StatefulWidget {
  const E04PageUI({super.key});

  @override
  State<E04PageUI> createState() => _E04PageUIState();
}

class _E04PageUIState extends State<E04PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/imge2.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 50, // ปรับตำแหน่งตามต้องการ
            left: 30, // ปรับตำแหน่งตามต้องการ
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF8EEC0),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 400,
              left: 40,
              right: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Forgot your Password?',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Enter email address',
                    style: TextStyle(
                      fontSize: 17.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                //ปุ่ม-----------------------
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
                    onPressed: () {
                      // ใช้ Navigator.push ในการเปลี่ยนหน้า
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => E05PageUI(),
                        ),
                      );
                    },
                    // ปรับแต่งสไตล์ของปุ่ม
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors
                          .transparent, // พื้นหลังปุ่มให้โปร่งใส เพื่อโชว์ gradient
                      shadowColor: Colors.transparent, // ไม่มีเงา
                      shape: RoundedRectangleBorder(
                        // ทำให้ปุ่มมีมุมโค้งเหมือนกับ Container
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                      ),
                    ),
                    child: Text(
                      'Send code',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 260,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an Account? "),
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
