import 'package:flutter/material.dart';

class E03PageUI extends StatefulWidget {
  const E03PageUI({super.key});

  @override
  State<E03PageUI> createState() => _E03PageUIState();
}

class _E03PageUIState extends State<E03PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: -150, // ปรับตำแหน่งขึ้นไป
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/imge2.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 200,
              left: 40,
              right: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Create your new account',
                  style: TextStyle(
                    fontSize: 18,
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
                    labelText: 'Name',
                    hintText: 'Input Name',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'E-mail',
                    hintText: 'Input E-mail',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Phone',
                    hintText: 'Input Phone',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Password',
                    hintText: 'Input Password',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "By singing up you agree to our ",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
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
                        'Terms & Conditions',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.orange,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.orange,
                          decorationThickness: 2,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "and ",
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
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
                        'Parivacy Policy',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.orange,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.orange,
                          decorationThickness: 2,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
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
                      'Sing Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
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
                  height: 40,
                ),
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
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account? "),
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
                        'Log in',
                        style: TextStyle(
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
