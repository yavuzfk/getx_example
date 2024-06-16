import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {}, child: const Text('Forget Password ?'))
              ],
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Sign In")),
            const AdditionalDocumentsText(),
          ],
        ),
      ),
    );
  }
}

class AdditionalDocumentsText extends StatelessWidget {
  const AdditionalDocumentsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'By continuing, you agree to our ',
        style: const TextStyle(color: Colors.black),
        children: [
          TextSpan(
            text: 'Privacy Policy',
            style: const TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Privacy Policy'ye tıklanınca yapılacak işlemler
                print('Privacy Policy tapped');
              },
          ),
          const TextSpan(
            text: ' and ',
          ),
          TextSpan(
            text: 'Terms of Use',
            style: const TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Terms of Use'a tıklanınca yapılacak işlemler
                print('Terms of Use tapped');
              },
          ),
          const TextSpan(
            text: '.',
          ),
        ],
      ),
    );
  }
}

class InputTextFieldWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  const InputTextFieldWidget(this.textEditingController, this.hintText,
      {super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
            alignLabelWithHint: true,
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black)),
            fillColor: Colors.white54,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            contentPadding: const EdgeInsets.only(bottom: 15),
            focusColor: Colors.white60),
      ),
    );
  }
}
