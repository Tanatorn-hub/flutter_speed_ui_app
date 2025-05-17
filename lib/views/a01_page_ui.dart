import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/a02_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Column(
            children: [
              // ส่วนบน
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
                    height: 550,
                    width: 500,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Dixcover Your',
                style: GoogleFonts.outfit(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF464444),
                ),
              ),
              Text(
                'Own Dream House',
                style: GoogleFonts.outfit(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF464444),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et. Eget viverra urna, vestibulum egestas faucibus egestas. Sagittis nam velit volutpat eu nunc.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.outfit(fontSize: 14),
                ),
              ),
              SizedBox(height: 50),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    // Sign in
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // do something
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size.fromHeight(55),
                          backgroundColor: Color(0xffF89AEE),
                          foregroundColor: Colors.white,
                          elevation: 4,
                          shadowColor: Color.fromRGBO(0, 0, 0, 0.5),
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Sign in',
                            style: GoogleFonts.outfit(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Register
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
                          minimumSize: Size.fromHeight(55),
                          backgroundColor: Color(0xffF3F3F3),
                          foregroundColor: Colors.black,
                          elevation: 4,
                          shadowColor: Color.fromRGBO(0, 0, 0, 0.5),
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Register',
                            style: GoogleFonts.outfit(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF464444),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20), // เว้นระยะจากขอบล่างเล็กน้อย
            ],
          ),
        ),
      ),
    );
  }
}
