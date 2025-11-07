import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shophub_project/data/constrant.dart';
import 'package:shophub_project/pages/views/setpassword_page.dart';

class ForgotpassPage extends StatelessWidget {
  const ForgotpassPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController dataFpass = TextEditingController();
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
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Image asset
                Image.asset('assets/images/forgotpass.png'),
                // Title and Body Text
                Padding(
                  padding: const EdgeInsets.only(top: 48),
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            height: 1.5,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Dont worries, we’ll you reset instructions',
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
                ),

                // TextField Forgot Password
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: SizedBox(
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
                            controller: dataFpass,
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
                            return SetpasswordPage();
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
        ),
      ),
    );
  }
}
