import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_tutorial/screens/sign_in_page.dart';
import 'package:getx_tutorial/screens/sign_up_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  final String welcomePageImagePath = "assets/codeway_welcome_page.png";
  final String welcomePageSignInButtonText = "Sign in with email";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(welcomePageImagePath),
          const Text("Welcome back to"),
          const Text("Plantist"),
          const Text("Start your productive life now!"),
          ElevatedButton.icon(
              onPressed: () {
                Get.to(const SignInPage());
              },
              icon: const Icon(Icons.mail_outline_sharp),
              label: Text(welcomePageSignInButtonText)),
          // const Text("Don't you have an account? Sign up"),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Don't have an account? ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey[700]),
            ),
            GestureDetector(
                onTap: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  //TODO: route sign up page
                  Get.to(const SignUpPage());
                },
                child: Text(
                  "Sign up",
                  style: TextStyle(
                      // fontSize: 16,
                      // fontWeight: FontWeight.normal,
                      color: Colors.blue[700]),
                )),
          ]),
        ],
      ),
    );
  }
}
