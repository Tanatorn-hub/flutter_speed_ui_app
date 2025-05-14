// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_ui_app/views/e_page/e06_page_ui.dart';

// สร้าง List ของ FocusNode เพื่อใช้ควบคุมการโฟกัสในแต่ละช่องกรอก
List<FocusNode> focusNodes = List.generate(4, (index) => FocusNode());

class E05PageUI extends StatefulWidget {
  const E05PageUI({super.key});

  @override
  State<E05PageUI> createState() => _E05PageUIState();
}

class _E05PageUIState extends State<E05PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 65,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                ), // Padding สำหรับปุ่มย้อนกลับ
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
              SizedBox(width: 60),
              Text(
                'OTP Verification',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 40,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/imge6.png',
                  width: 400,
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Enter OTP',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'An 4 digit code has been sent to your',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'email',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // ช่องกรอก OTP-----------------------------------------------------------------------
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: List.generate(4, (index) {
                      return Container(
                        width: 55, // กำหนดความกว้างของช่อง OTP
                        height: 55, // กำหนดความสูงของช่อง OTP
                        margin: EdgeInsets.symmetric(
                            horizontal: 6), // ระยะห่างระหว่างช่องกรอก
                        decoration: BoxDecoration(
                          color: Colors.grey[300], // พื้นหลังสีเทาอ่อน
                          borderRadius:
                              BorderRadius.circular(10), // ความโค้งของมุมกล่อง
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26, // สีเงา
                              blurRadius: 2, // ความเบลอของเงา
                              offset: Offset(
                                  0, 0), // ตำแหน่งเงา (แนวตั้งลงล่าง 2 px)
                            ),
                          ],
                        ),
                        child: Center(
                          child: TextFormField(
                            maxLength: 1, // จำกัดให้กรอกได้ 1 ตัวอักษรต่อช่อง
                            keyboardType:
                                TextInputType.number, // ใช้แป้นพิมพ์ตัวเลข
                            textAlign:
                                TextAlign.center, // ข้อความอยู่ตรงกลางช่อง
                            focusNode:
                                focusNodes[index], // ใช้ FocusNode แยกแต่ละช่อง
                            style: TextStyle(
                                fontSize: 20), // ขนาดตัวอักษรในช่องกรอก
                            inputFormatters: [
                              FilteringTextInputFormatter
                                  .digitsOnly // กรองให้กรอกเฉพาะตัวเลข
                            ],
                            decoration: InputDecoration(
                              counterText:
                                  '', // ซ่อนตัวนับอักขระที่อยู่ด้านล่าง
                              border: InputBorder.none, // ไม่มีเส้นขอบ
                              filled:
                                  false, // ไม่ต้องใช้พื้นหลังใน TextFormField (เพราะใช้ Container อยู่แล้ว)
                            ),
                            onChanged: (value) {
                              // เมื่อพิมพ์แล้วให้ข้ามไปช่องถัดไปอัตโนมัติ
                              if (value.isNotEmpty && index < 3) {
                                FocusScope.of(context)
                                    .requestFocus(focusNodes[index + 1]);
                              }
                            },
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '       You should receive the OTP in ',
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '30 second',
                        style: TextStyle(
                          color: Colors.deepOrange,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
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
                          builder: (context) => E06PageUI(),
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
                      'Verify',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
