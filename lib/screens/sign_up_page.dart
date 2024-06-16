import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:getx_tutorial/screens/sign_in_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    const String hintText = "deneme";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Sign in with email"),
            const Text("Enter your email and password"),
            InputTextFieldWidget(emailController, 'email'),
            const SizedBox(
              height: 20,
            ),
            InputTextFieldWidget(passwordController, 'password'),
            ElevatedButton(
                onPressed: () {}, child: const Text("Create Account")),
            const AdditionalDocumentsText(),
          ],
        ),
      ),
    );
  }
}
