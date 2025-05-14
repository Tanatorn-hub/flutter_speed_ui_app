import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class A02PageUI extends StatefulWidget {
  const A02PageUI({super.key});

  @override
  State<A02PageUI> createState() => _A02PageUIState();
}

class _A02PageUIState extends State<A02PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 100,
          left: 40,
          right: 40,
        ),
        child: Center(
          child: Column(
            children: [
              Text(
                'Welcome Back',
                style: GoogleFonts.outfit(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF464444),
                ),
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam maecenas mi non sed ut odio. Non, justo, sed facilisi et.',
                textAlign: TextAlign.center,
                style: GoogleFonts.outfit(
                  fontSize: 14,
                  color: Color(0xFF464444),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  hintText: 'Password',
                  hintStyle: GoogleFonts.outfit(
                    textStyle: TextStyle(
                      color: Color(0xFF666161),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  fillColor: Colors.grey[200], // สีพื้นหลัง
                  filled: true, // เปิดใช้งานสีพื้นหลัง
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
