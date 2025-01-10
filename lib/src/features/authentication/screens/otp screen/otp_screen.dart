import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_apk/src/constants/sizes.dart';
import 'package:my_apk/src/constants/text.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  tOtpScreenTitle,
                  style: GoogleFonts.notable(fontSize: 52),
                ),
                const SizedBox(height: tDefaultSize - 20),
                Text(tOtpScreenSubtitle),
                SizedBox(height: tDefaultSize - 20),
                OtpTextField(
                  numberOfFields: 6,
                  showFieldAsBox: true,
                ),
                const SizedBox(height: tDefaultSize - 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "submit".toUpperCase(),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
