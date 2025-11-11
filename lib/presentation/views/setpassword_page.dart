import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shophub_project/data/constrant.dart';
import 'package:shophub_project/presentation/views/login_page.dart';

class SetpasswordPage extends StatefulWidget {
  const SetpasswordPage({super.key});

  @override
  State<SetpasswordPage> createState() => _SetpasswordPageState();
}

class _SetpasswordPageState extends State<SetpasswordPage> {
  TextEditingController pass1 = TextEditingController();
  TextEditingController pass2 = TextEditingController();
  var isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.neutral50,
      appBar: AppBar(
        animateColor: true,
        backgroundColor: Colors.transparent,
        forceMaterialTransparency: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: SvgPicture.asset('svg/leadingIcon.svg'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // title
            SizedBox(
              width: double.infinity,
              child: Text(
                'Set New Password',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  height: 1.5,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            // TextField
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New Password',
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
                        controller: pass1,
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
            ),

            // TextField
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New Password',
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
                        controller: pass2,
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
            ),

            // Button
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: FilledButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                  );
                },
                style: FilledButton.styleFrom(
                  backgroundColor: KColors.primary500,
                  minimumSize: Size(double.infinity, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text('Reset Password'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
