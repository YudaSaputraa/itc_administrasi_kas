import 'dart:ffi' as ffi;
import 'dart:ui';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itc_project_kas/features/SignIn/sign_in.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final List<String> items = [
    'Public Relation',
    'Mobile',
    'Web',
  ];
  String? _selectValue;
  var _passwordVisible = false;
  var _confirmPasswordVisible = false;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordConfirmController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.all(5.w),
            child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text(
                    "Create Account",
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
                ),
                const SizedBox(height: 10),
                const Text(
                  "Please enter the details below to continue.",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
                const SizedBox(height: 10),
                Text(
                  "Full Name",
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    color: const Color.fromARGB(
                      255,
                      3,
                      81,
                      92,
                    ),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 1.h),
                  child: SizedBox(
                    height: 7.h,
                    child: TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Enter your name',
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
                const SizedBox(height: 10),
                Text(
                  "Email Address",
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    color: const Color.fromARGB(
                      255,
                      3,
                      81,
                      92,
                    ),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 1.h),
                  child: SizedBox(
                    height: 7.h,
                    child: TextField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
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
                const SizedBox(height: 10),
                Text(
                  "Password",
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    color: const Color.fromARGB(
                      255,
                      3,
                      81,
                      92,
                    ),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 1.h),
                  child: SizedBox(
                    height: 7.h,
                    child: TextField(
                      controller: _passwordController,
                      obscureText: !_passwordVisible,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Type your password",
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
                          suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: const Color.fromARGB(
                                255,
                                3,
                                81,
                                92,
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          )),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Confirm Password",
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    color: const Color.fromARGB(
                      255,
                      3,
                      81,
                      92,
                    ),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 1.h),
                  child: SizedBox(
                    height: 7.h,
                    child: TextField(
                      controller: _passwordConfirmController,
                      obscureText: !_confirmPasswordVisible,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Re-type your password",
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
                          suffixIcon: IconButton(
                            icon: Icon(
                              _confirmPasswordVisible
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: const Color.fromARGB(
                                255,
                                3,
                                81,
                                92,
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                _confirmPasswordVisible =
                                    !_confirmPasswordVisible;
                              });
                            },
                          )),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Division",
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    color: const Color.fromARGB(
                      255,
                      3,
                      81,
                      92,
                    ),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                DropdownButton2(
                  isExpanded: true,
                  hint: Row(
                    children: const [
                      SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: Text(
                          'choose your division',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  items: items
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: GoogleFonts.poppins(
                                fontSize: 17.sp,
                                color: Colors.black,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ))
                      .toList(),
                  value: _selectValue,
                  onChanged: (value) {
                    setState(() {
                      _selectValue = value as String;
                    });
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                  ),
                  iconSize: 4.h,
                  iconEnabledColor: Colors.white,
                  iconDisabledColor: const Color.fromRGBO(
                    158,
                    158,
                    158,
                    1,
                  ),
                  itemSplashColor: Colors.white,
                  buttonHeight: 7.h,
                  selectedItemHighlightColor: Colors.white,
                  buttonWidth: 100.w,
                  buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(
                      255,
                      9,
                      99,
                      110,
                    ),
                  ),
                  buttonElevation: 2,
                  itemHeight: 40,
                  itemPadding: const EdgeInsets.only(left: 14, right: 14),
                  dropdownMaxHeight: 100.h,
                  dropdownWidth: 95.w,
                  dropdownPadding: null,
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(
                      255,
                      230,
                      227,
                      227,
                    ),
                  ),
                  dropdownElevation: 8,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(
                                255,
                                9,
                                99,
                                110,
                              ),
                            ),
                            minimumSize:
                                MaterialStateProperty.all(Size(500, 50)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ))),
                        onPressed: () {
                          bool emailValid = RegExp(
                                  r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                              .hasMatch(_emailController.text);
                          String text = "";
                          if (_usernameController.text.isEmpty ||
                              _passwordController.text.isEmpty ||
                              _emailController.text.isEmpty ||
                              _passwordConfirmController.text.isEmpty) {
                            text =
                                "Please input your username, email, and password";
                          } else if (_passwordController.text !=
                              _passwordConfirmController.text) {
                            text = "The password confirmation is wrong";
                          } else if (!emailValid) {
                            text = "Wrong email format";
                          } else if (_selectValue != null) {
                            text = "Please choose your division";
                          } else {
                            Get.to(() => SignIn());
                          }
                          SnackBar snackBar = SnackBar(content: Text(text));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      const Text('Already have an account?',
                          style: TextStyle(fontSize: 16)),
                      TextButton(
                          onPressed: (() {
                            Get.to(SignIn());
                          }),
                          child: const Text('Sign In',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 3, 81, 92),
                                  fontSize: 16)))
                    ])
                  ],
                )
              ],
            )),
      ),
    );
  }
}
