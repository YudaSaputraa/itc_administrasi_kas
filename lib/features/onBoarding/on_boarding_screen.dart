import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itc_project_kas/features/SignIn/sign_in.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
        255,
        214,
        227,
        238,
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(3.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(1.w),
                    child: Stack(
                      children: [
                        PageView(
                          controller: _pageController,
                          children: [
                            Container(
                              decoration: BoxDecoration(),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  _title(),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Center(
                                    child: SvgPicture.asset(
                                      "assets/images/wireframe.svg",
                                      height: 28.h,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 11.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Welcome to ",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18.sp,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "ITClub ",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18.sp,
                                          color: const Color.fromARGB(
                                            255,
                                            3,
                                            81,
                                            92,
                                          ),
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        "Cash",
                                        style: GoogleFonts.poppins(
                                          color: const Color.fromARGB(
                                            255,
                                            3,
                                            81,
                                            92,
                                          ),
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: 3.w,
                                      left: 3.w,
                                      top: 2.h,
                                    ),
                                    child: Text(
                                      "We are here to help you to make payments",
                                      style: GoogleFonts.poppins(
                                        color: const Color.fromARGB(
                                          255,
                                          124,
                                          118,
                                          118,
                                        ),
                                        fontSize: 18.sp,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  _title(),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Center(
                                    child: SvgPicture.asset(
                                      "assets/images/wireframe.svg",
                                      height: 28.h,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 11.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "View your payments report ",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: 3.w,
                                      left: 3.w,
                                      top: 2.h,
                                    ),
                                    child: Text(
                                      "Display your payment result",
                                      style: GoogleFonts.poppins(
                                        color: Colors.grey,
                                        fontSize: 18.sp,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 4.h,
                                  ),
                                  _title(),

                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Center(
                                    child: SvgPicture.asset(
                                      "assets/images/wireframe.svg",
                                      height: 28.h,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 11.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Complete payments with ease",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: 3.w,
                                      left: 3.w,
                                      top: 2.h,
                                    ),
                                    child: Text(
                                      "Make payments on your phone easily",
                                      style: GoogleFonts.poppins(
                                        color: Colors.grey,
                                        fontSize: 18.sp,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  // Container(
                                  //   width: 88.w,
                                  //   height: 6.h,
                                  //   child: ElevatedButton(
                                  //     onPressed: () {},
                                  //     child: Text("Get Started"),
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 80.h,
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Center(
                                child: SmoothPageIndicator(
                                  controller: _pageController,
                                  count: 3,
                                  effect: ExpandingDotsEffect(
                                    activeDotColor: const Color.fromARGB(
                                      255,
                                      3,
                                      81,
                                      92,
                                    ),
                                    dotHeight: 1.5.h,
                                    dotWidth: 5.w,
                                    dotColor: Colors.white,
                                  ),
                                  onDotClicked: (index) =>
                                      _pageController.animateToPage(
                                    index,
                                    duration: const Duration(
                                      milliseconds: 500,
                                    ),
                                    curve: Curves.bounceInOut,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Get.to(SignIn());
                                  },
                                  child: Text(
                                    "Skip",
                                    style: GoogleFonts.poppins(
                                      color: Colors.grey,
                                      fontSize: 17.sp,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Next",
                                    style: GoogleFonts.poppins(
                                      color: Colors.black,
                                      fontSize: 17.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                            2.w,
                            80.h,
                            2.w,
                            2.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _title() {
  return Row(
    children: [
      Text(
        "ITClub ",
        style: GoogleFonts.poppins(
          fontSize: 25.sp,
          color: const Color.fromARGB(
            255,
            3,
            81,
            92,
          ),
          fontWeight: FontWeight.w700,
        ),
      ),
      Text(
        "Cash",
        style: GoogleFonts.poppins(
          color: const Color.fromARGB(
            255,
            3,
            81,
            92,
          ),
          fontSize: 25.sp,
        ),
      ),
    ],
  );
}
