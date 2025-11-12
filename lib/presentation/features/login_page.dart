import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shophub_project/app/mobile/auth_service.dart';
import 'package:shophub_project/data/constrant.dart';
import 'package:shophub_project/presentation/features/forgotpass/forgotpass_page.dart';
import 'package:shophub_project/presentation/features/signup/signup_page.dart.dart';
import 'package:shophub_project/presentation/widget/widget_tree.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController(
    text: 'rudi.rd587@gmail.com',
  );
  TextEditingController controllerPassword = TextEditingController(
    text: 'Rudi@091099',
  );
  var isObscure = true;
  String errorMessage = '';

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  void login() async {
    try {
      await authService.value.signIn(
        email: controllerEmail.text,
        password: controllerPassword.text,
      );
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const WidgetTree()),
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message ?? 'This is not working';
      });
    }
  }

  void popPage() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    // double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: KColors.neutral50,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsetsGeometry.fromLTRB(16, 24, 16, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign in to Your Account',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          height: 1.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Join us again and continue your shopping experience',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          height: 1.5,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                // TextField for Email
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email Address',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          height: 1.5,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 12),
                      SizedBox(
                        height: 48,
                        width: double.infinity,
                        child: TextField(
                          controller: controllerEmail,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: KColors.neutral100,
                                width: 1.0,
                              ),
                            ),
                            hintText: 'Input Your Email',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Icon(
                                Icons.email,
                                size: 20,
                                color: KColors.neutral400,
                              ),
                            ),

                            hintStyle: TextStyle(
                              color: KColors.neutral400,
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              height: 1.5,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 16),
                // TextField for Password
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Password',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          height: 1.5,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 12),
                      SizedBox(
                        height: 48,
                        width: double.infinity,
                        child: TextField(
                          obscureText: isObscure,
                          controller: controllerPassword,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              color: KColors.neutral300,
                              onPressed: () {
                                setState(() {
                                  isObscure = !isObscure;
                                });
                              },
                              icon: isObscure
                                  ? const Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                color: KColors.neutral100,
                                width: 1.0,
                              ),
                            ),
                            hintText: 'Input your password',
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Icon(
                                Icons.key,
                                size: 20,
                                color: KColors.neutral400,
                              ),
                            ),

                            hintStyle: TextStyle(
                              color: KColors.neutral400,
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              height: 1.5,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  errorMessage,
                  style: TextStyle(
                    color: Colors.red,
                    fontFamily: 'Poppins',
                    fontSize: 10,
                    height: 1.5,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                // Forgot Password Text Link
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(),
                      isSemanticButton: true,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ForgotpassPage();
                            },
                          ),
                        );
                      },
                      child: Text(
                        'Forgot Password?',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: KColors.primary500,
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          height: 1.5,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 32),

                // Filled Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: FilledButton(
                    onPressed: () => login(),
                    style: FilledButton.styleFrom(
                      backgroundColor: KColors.primary500,
                      minimumSize: Size(double.infinity, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text('Sign In'),
                  ),
                ),
                SizedBox(height: 40),
                // Divider With Label
                Row(
                  children: [
                    // Left Divider
                    Expanded(
                      child: Divider(color: KColors.neutral100, thickness: 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Or sign in with',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          height: 1.5,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(color: KColors.neutral100, thickness: 1),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                // Login With Google
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(double.infinity, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: SvgPicture.asset('svg/google.svg'),
                        ),
                        Text(
                          'Login With Google',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            height: 1.5,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12),
                // Login With Apple
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(double.infinity, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: SvgPicture.asset('svg/apple.svg'),
                        ),
                        Text(
                          'Login With Apple',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            height: 1.5,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        height: 1.5,
                        fontWeight: FontWeight.w500,
                        color: KColors.neutral400,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SignUpPage();
                              },
                            ),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            height: 1.5,
                            fontWeight: FontWeight.w600,
                            color: KColors.primary500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
