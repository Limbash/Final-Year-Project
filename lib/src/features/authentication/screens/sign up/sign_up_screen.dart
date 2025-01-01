import 'package:flutter/material.dart';
import 'package:my_apk/src/constants/colors.dart';
import 'package:my_apk/src/constants/images.dart';
import 'package:my_apk/src/constants/sizes.dart';
import 'package:my_apk/src/constants/text.dart';
import 'package:my_apk/src/features/authentication/screens/login/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
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
                tSignUpPageTitle,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                tSignUpPageSubtitle,
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
                          labelText: tFullName,
                          hintText: tFullName,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: tFormHeight - 20),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          labelText: tEmail,
                          hintText: tEmail,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: tFormHeight - 20),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.numbers),
                          labelText: tPhoneNumber,
                          hintText: tPhoneNumber,
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
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.fingerprint),
                          labelText: 'Confirm $tPassword',
                          hintText: 'Confirm $tPassword',
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.remove_red_eye_outlined),
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Already have an account'),
                        ),
                      ),
                      SizedBox(height: tFormHeight - 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                          ),
                          child: Text('Sign Up'.toUpperCase()),
                        ),
                      ),
                      const SizedBox(height: tFormHeight - 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'OR',
                            style: TextStyle(
                              color: tWhiteColor,
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
