import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itc_project_kas/features/mainPage/landing_page.dart';
import 'package:itc_project_kas/features/register/registerPage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:itc_project_kas/features/mainPage/profile_page.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isHidden = false;
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(
              5.w,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 6.h,
                ),
                Center(
                  child: Image.asset(
                    "assets/images/logo_itc.png",
                    height: 24.h,
                  ),
                ),
                SizedBox(
                  width: 100.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sign In",
                        style: GoogleFonts.poppins(
                          fontSize: 24.sp,
                          color: const Color.fromARGB(
                            255,
                            3,
                            81,
                            92,
                          ),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Please enter the details below to continue.",
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.h),
                  child: SizedBox(
                    height: 7.h,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Your E-mail Address",
                        filled: true,
                        fillColor: const Color.fromARGB(
                          255,
                          240,
                          237,
                          237,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromARGB(
                              255,
                              240,
                              237,
                              237,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.h),
                  child: SizedBox(
                    height: 7.h,
                    child: TextField(
                      obscureText: !_isHidden,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: "Type your pasword",
                        suffixIcon: IconButton(
                          onPressed: _togglePasswordView,
                          icon: Icon(
                            _isHidden
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: const Color.fromARGB(
                              255,
                              3,
                              81,
                              92,
                            ),
                          ),
                        ),
                        filled: true,
                        fillColor: const Color.fromARGB(
                          255,
                          240,
                          237,
                          237,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromARGB(
                              255,
                              240,
                              237,
                              237,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)),
                        alignment: Alignment.centerLeft,
                        child: Checkbox(
                          value: _isChecked,
                          activeColor: const Color.fromARGB(
                            255,
                            3,
                            81,
                            92,
                          ),
                          onChanged: (bool? value) {
                            setState(
                              () {
                                _isChecked = value!;
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Remember me',
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 17.sp,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forget Password?",
                            style: GoogleFonts.roboto(
                              color: const Color.fromARGB(
                                255,
                                255,
                                11,
                                11,
                              ),
                              fontSize: 17.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6.h,
                  width: 100.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: const Color.fromARGB(
                        255,
                        3,
                        81,
                        92,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Get.off(LandingPage());
                    },
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.poppins(
                        fontSize: 17.sp,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 17.sp,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(RegisterPage());
                      },
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.poppins(
                          color: const Color.fromARGB(
                            255,
                            3,
                            81,
                            92,
                          ),
                          fontSize: 17.sp,
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Divider(
                      color: const Color.fromARGB(
                        255,
                        179,
                        178,
                        178,
                      ),
                      height: 4.h,
                      thickness: 2,
                      indent: 0,
                      endIndent: 60.w,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                        32.w,
                        0.6.h,
                        20.w,
                        1.h,
                      ),
                      child: Text(
                        "Or sign in with",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    Divider(
                      color: const Color.fromARGB(
                        255,
                        179,
                        178,
                        178,
                      ),
                      height: 4.h,
                      thickness: 2,
                      indent: 60.w,
                      endIndent: 0.w,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/icons/google_icons.svg"),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset("assets/icons/facebook_icons.svg"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _togglePasswordView() {
    setState(
      () {
        _isHidden = !_isHidden;
      },
    );
  }
}
