import 'package:flutter/material.dart';

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
          Row(
            children: [
              SizedBox(
                height: 150,
              ),
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
              Spacer(), // ขยายพื้นที่ว่างด้านซ้าย
              Text(
                'OTP Verification',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Spacer(), // ขยายพื้นที่ว่างด้านขวาให้ข้อความอยู่กลาง
            ],
          ),
          SizedBox(height: 20), // ระยะห่างระหว่างแถวกับส่วนอื่น
          Column(
            children: [
              Text(
                'ส่วนอื่น ๆ ที่คุณต้องการเพิ่ม',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
