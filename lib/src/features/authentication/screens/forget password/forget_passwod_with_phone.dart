import 'package:flutter/material.dart';
import 'package:my_apk/src/constants/text.dart';

class ForgetPasswordWithPhone extends StatelessWidget {
  const ForgetPasswordWithPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.phone, size: 120),
            Text(tPhoneNumber, style: Theme.of(context).textTheme.titleLarge),
            Text(tResetViaPhoneNumber,
                style: Theme.of(context).textTheme.titleSmall),
          ],
        ),
      ),
    );
  }
}
