import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/top_corner_design.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: screenHeight * 0.45,
            child: Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                const Positioned(
                  top: 0,
                  left: 0,
                  child: TopCornerDesign(),
                ),
                Positioned(
                  bottom: 0,
                  left: screenWidth * 0.28,
                  child: Image.asset(
                    'assets/dashboard_center_design.png',
                    fit: BoxFit.cover,
                    height: 200.0,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 68),
            child: SizedBox(
              height: screenHeight * 0.30,
              child: Column(
                children: <Widget>[
                  Text(
                    'Get things done with ToDo',
                    style: GoogleFonts.poppins().copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                      color: const Color(0XCC000000),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins().copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: const Color(0XFFFAA885),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    child: Text(
                      'Get Started',
                      style: GoogleFonts.poppins().copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
