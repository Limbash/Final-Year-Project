import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:my_apk/src/constants/images.dart';
import 'package:my_apk/src/constants/sizes.dart';
import 'package:my_apk/src/constants/text.dart';
import 'package:my_apk/src/features/app/screens/home/home.dart';
import 'package:my_apk/src/features/authentication/screens/sign%20up/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // first part of the screen
              Image(
                image: AssetImage(tWelcomeScreenImage),
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Text(
                tLoginTitle,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                tLoginSubTitle,
                style: Theme.of(context).textTheme.titleSmall,
              ),

              // second part of the screen

              Form(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: tFormHeight - 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person_outline_outlined),
                          labelText: tEmail,
                          hintText: tEmail,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: tFormHeight - 20),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.fingerprint),
                          labelText: tPassword,
                          hintText: tPassword,
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.remove_red_eye_outlined),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: tFormHeight - 20),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) => Container(
                                padding: EdgeInsets.all(tDefaultSize),
                                child: Column(
                                  children: [
                                    Text(
                                      tForgetPasswordTitle,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge,
                                    ),
                                    Text(
                                      tForgetPasswordSubTitle,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.phone,
                                          size: 40,
                                        ),
                                        Column(
                                          children: [
                                            Text(tPhoneNumber),
                                            Text(tResetViaPhoneNumber),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          child: Text('Forgot Password?'),
                        ),
                      ),
                      SizedBox(height: tFormHeight - 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => Get.to(() => HomeScreen()),
                          child: Text('Login'.toUpperCase()),
                        ),
                      ),
                      const SizedBox(height: tFormHeight - 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'OR',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton.icon(
                              icon: Image(
                                image: AssetImage(tGoogleLogo),
                                height: 20,
                              ),
                              onPressed: () {},
                              label: Text(
                                tSignInWithGoogle.toUpperCase(),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextButton(
                              onPressed: () => Get.to(() => SignUpScreen()),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('Don\'t have an account?'),
                                  Text('$tSignUp here')
                                ],
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
