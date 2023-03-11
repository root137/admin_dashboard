// ignore_for_file: library_private_types_in_public_api

import 'package:admin_dashboard/core/constants/routes_constants.dart';
import 'package:admin_dashboard/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/space.jpg'),
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  width: 750,
                  height: 450,
                  child: Row(
                    children: [
                      Expanded(
                        child: Image.asset(
                          'assets/images/admin_logo.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),

                      // VerticalDivider(
                      //   thickness: 3,
                      // ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Admin Login',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                letterSpacing: 2,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'BebasNeue',
                              ),
                            ),
                            const SizedBox(height: 20),
                            Form(
                              key: _formKey,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Email',
                                    style:
                                        Theme.of(context).textTheme.labelSmall,
                                  ),
                                  const SizedBox(height: 4),
                                  SizedBox(
                                    width: 350,
                                    child: _buildEmailField(),
                                  ),
                                  const SizedBox(height: 30),
                                  Text(
                                    'Password',
                                    style:
                                        Theme.of(context).textTheme.labelSmall,
                                  ),
                                  const SizedBox(height: 4),
                                  SizedBox(
                                    width: 350,
                                    child: _buildPasswordField(),
                                  ),
                                  const SizedBox(height: 50),
                                  Center(
                                    child: SizedBox(
                                      width: 300,
                                      child: _buildLoginButton(),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Align(
                                    child: TextButton(
                                      onPressed: () {},
                                      style: TextButton.styleFrom(
                                        foregroundColor: LightColor.grey,
                                      ),
                                      child: const Text('Forgot Password?'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  TextFormField _buildEmailField() {
    return TextFormField(
      controller: _emailController,
      style: Theme.of(context).textTheme.bodySmall,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Your Email Address',
      ),
      // validator: (value) {
      //   if (value == null || value.isEmpty) {
      //     return 'Please enter any text';
      //   }

      //   if (!value.contains('@')) {
      //     return 'Please enter a valid email';
      //   }

      //   return null;
      // },
      // autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }

  TextFormField _buildPasswordField() {
    return TextFormField(
      controller: _passwordController,
      style: Theme.of(context).textTheme.bodySmall,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Your Password',
      ),
      validator: (value) {},
    );
  }

  _buildLoginButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: LightColor.background,
        backgroundColor: LightColor.grey,
        elevation: 5,
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 20,
        ),
      ),
      onPressed: () {
        AutoRouter.of(context).replaceNamed(RouteConstants.dashboard);
      },
      child: const Text(
        'SIGN IN',
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
          letterSpacing: 2,
          fontWeight: FontWeight.w400,
          fontFamily: 'BebasNeue',
        ),
      ),
    );
  }
}
