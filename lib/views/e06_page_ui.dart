import 'package:flutter/material.dart';

class E06PageUI extends StatefulWidget {
  const E06PageUI({super.key});

  @override
  State<E06PageUI> createState() => _E06PageUIState();
}

class _E06PageUIState extends State<E06PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 0,
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
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 360,
                  left: 40,
                  right: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Create New Password',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Enter New Password',
                        style: TextStyle(
                          fontSize: 20,
                        ),
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
                            color: Colors.orange, // สีขอบปกติ
                            width: 2.0,
                          ),
                        ),
                        labelText: 'Enter New password',
                        hintText: 'Input password',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: 'Confirm password',
                        hintText: 'Input Password',
                      ),
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
                          begin:
                              Alignment.centerLeft, // เริ่มต้นไล่สีจากด้านซ้าย
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
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ),
                          ),
                        ),
                        child: Text(
                          'Submit',
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
            ),
          ],
        ),
      ),
    );
  }
}
