import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_apk/src/constants/images.dart';
import 'package:my_apk/src/constants/text.dart';

import '../welcome screen/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    startAnimation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              top: animate ? 0 : -45,
              left: animate ? 0 : -45,
              child: Container(
                height: 60,
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(29),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              top: 80,
              left: animate ? 0 : -120,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 500),
                  opacity: animate ? 1 : 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tHealthAppName,
                        style: GoogleFonts.montserrat(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 45,
                        ),
                      ),
                      Text(
                        tHealthAppTagLine,
                        style: GoogleFonts.poppins(
                          color: Colors.blue,
                          fontSize: 22,
                        ),
                      ),
                      Image(
                        image: AssetImage(tSplashScreenImage),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 2500),
              bottom: animate ? 25 : -20,
              right: animate ? 0 : -30,
              child: Container(
                height: 45,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 2000),
              bottom: animate ? 10 : -15,
              left: animate ? 5 : -10,
              child: Container(
                height: 25,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: Text(
                  'MiDoc',
                  style: GoogleFonts.siemreap(
                    fontSize: 18,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(
      Duration(
        milliseconds: 500,
      ),
    );
    setState(() => animate = true);
    await Future.delayed(
      Duration(
        milliseconds: 5000,
      ),
    );
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => WelcomeScreen(),
      ),
    );
  }
}
