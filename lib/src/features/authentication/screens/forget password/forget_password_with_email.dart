import 'package:flutter/material.dart';
import 'package:my_apk/src/constants/sizes.dart';
import 'package:my_apk/src/constants/text.dart';
import 'package:my_apk/src/features/authentication/screens/otp%20screen/otp_screen.dart';

class ForgetPasswordWithEmail extends StatelessWidget {
  const ForgetPasswordWithEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.email, size: 120),
                Text(tForgetWithEmailTitle,
                    style: Theme.of(context).textTheme.titleLarge),
                Text(tForgetWithEmailSubTitle,
                    style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: tDefaultSize - 10),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Email address",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: tDefaultSize - 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OtpScreen(),
                      ),
                    ),
                    child: Text(
                      "Continue".toUpperCase(),
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
