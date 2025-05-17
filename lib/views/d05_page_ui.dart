import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_ui_app/views/d06_page_ui.dart';
import 'package:google_fonts/google_fonts.dart';

List<FocusNode> focusNodes = List.generate(4, (index) => FocusNode());

class D05PageUI extends StatefulWidget {
  const D05PageUI({super.key});

  @override
  State<D05PageUI> createState() => _D05PageUIState();
}

class _D05PageUIState extends State<D05PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              top: 50, // ปรับตำแหน่งตามต้องการ
              left: 30, // ปรับตำแหน่งตามต้องการ
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xFFE8ECF4), // ขอบ
                    width: 1,
                  ),
                  color: Colors.white,
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 100,
                left: 30,
                right: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'OTP Verification',
                      style: GoogleFonts.urbanist(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1E232C),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Enter the verification code we just sent on your email address.",
                      style: GoogleFonts.urbanist(
                        fontSize: 16,
                        color: Color(0xFF1E232C),
                      ),
                    ),
                  ),
                  SizedBox(height: 35),
                  // ช่องกรอก OTP-----------------------------------------------------------------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      4,
                      (index) {
                        return Expanded(
                          // ✅ ใช้ Expanded ครอบ Container เพื่อให้กระจายเต็มความกว้าง
                          child: Container(
                            height: 60,
                            margin: EdgeInsets.symmetric(horizontal: 6),
                            decoration: BoxDecoration(
                              color: Color(0xFFF4F6FA),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color(0xFFE8ECF4), // ✅ สีขอบตามภาพ
                                width: 1.5,
                              ),
                            ),
                            child: Center(
                              child: TextFormField(
                                maxLength: 1,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                focusNode: focusNodes[index],
                                style: TextStyle(fontSize: 20),
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                decoration: InputDecoration(
                                  counterText: '',
                                  border: InputBorder.none,
                                  filled: false,
                                ),
                                onChanged: (value) {
                                  if (value.isNotEmpty && index < 3) {
                                    FocusScope.of(context)
                                        .requestFocus(focusNodes[index + 1]);
                                  }
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  SizedBox(
                    height: 35,
                  ),

                  // ปุ่ม ---------------------------------------------------
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => D06PageUI(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF1E232C),
                      fixedSize: Size(MediaQuery.of(context).size.width, 55),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Verify',
                      style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 430,
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
