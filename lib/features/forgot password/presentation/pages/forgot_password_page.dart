import 'package:flutter/material.dart';

///forgot passowrd page
class ForgotPasswordPage extends StatefulWidget {
  ///
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Forgot Password Page'),
      ),
    );
  }
}
