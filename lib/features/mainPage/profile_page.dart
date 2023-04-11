import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:itc_project_kas/features/mainPage/history_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:sliding_switch/sliding_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool sliderValue = false;
  int index = 0;
  final Map<int, Widget> _items = <int, Widget>{
    0: Column(
      children: [
        SizedBox(
          height: 3.h,
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: "Username",
            labelStyle: TextStyle(
              fontSize: 18,
            ),
            focusColor: Colors.white,
            //add prefix icon
            prefixIcon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: "Email",
            labelStyle: TextStyle(
              fontSize: 18,
            ),
            focusColor: Colors.white,
            //add prefix icon
            prefixIcon: Icon(
              Icons.email,
              color: Colors.grey,
            ),
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: "Phone",
            labelStyle: TextStyle(
              fontSize: 18,
            ),
            focusColor: Colors.white,
            //add prefix icon
            prefixIcon: Icon(
              Icons.phone,
              color: Colors.grey,
            ),
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: "Devisi",
            labelStyle: TextStyle(
              fontSize: 18,
            ),
            focusColor: Colors.white,
            //add prefix icon
            prefixIcon: Icon(
              Icons.work,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    ),
    1: Column(
      children: [
        SizedBox(
          height: 4.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "About Us",
              style: GoogleFonts.poppins(
                fontSize: 17.sp,
              ),
            ),
            Icon(Icons.navigate_next_outlined),
          ],
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
          indent: 0.w,
          endIndent: 0.w,
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Security",
              style: GoogleFonts.poppins(
                fontSize: 17.sp,
              ),
            ),
            Icon(Icons.navigate_next_outlined),
          ],
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
          indent: 0.w,
          endIndent: 0.w,
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Language",
              style: GoogleFonts.poppins(
                fontSize: 17.sp,
              ),
            ),
            Icon(Icons.navigate_next_outlined),
          ],
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
          indent: 0.w,
          endIndent: 0.w,
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "FAQ",
              style: GoogleFonts.poppins(
                fontSize: 17.sp,
              ),
            ),
            Icon(Icons.navigate_next_outlined),
          ],
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
          indent: 0.w,
          endIndent: 0.w,
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Terms & Contidions",
              style: GoogleFonts.poppins(
                fontSize: 17.sp,
              ),
            ),
            Icon(Icons.navigate_next_outlined),
          ],
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
          indent: 0.w,
          endIndent: 0.w,
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Version Update",
              style: GoogleFonts.poppins(
                fontSize: 17.sp,
              ),
            ),
            Icon(Icons.navigate_next_outlined),
          ],
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
          indent: 0.w,
          endIndent: 0.w,
        ),
        SizedBox(
          height: 6.h,
          width: 100.w,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: const Color.fromARGB(
                255,
                240,
                183,
                190,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {},
            child: Text(
              "Sign Out",
              style: GoogleFonts.poppins(
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
                color: const Color.fromARGB(
                  255,
                  241,
                  45,
                  31,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: GoogleFonts.poppins(
            fontSize: 20.sp,
          ),
        ),
        backgroundColor: const Color.fromARGB(
          255,
          3,
          81,
          92,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.edit),
            color: Colors.white,
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(2.h),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage("assets/images/cuy.png"),
                        ),
                      ),
                      height: 13.h,
                      width: 30.w,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rafli Yulistiawan",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w800,
                            fontSize: 20.sp,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Lead of ITC",
                          style: GoogleFonts.poppins(
                            fontSize: 18.sp,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                SlidingSwitch(
                  value: sliderValue,
                  width: 95.w,
                  height: 7.h,
                  onChanged: (sliderValue) {
                    setState(() {
                      sliderValue != sliderValue;
                      if (sliderValue == true) {
                        index = 1;
                      } else {
                        index = 0;
                      }
                    });
                    print(index);
                  },
                  animationDuration: const Duration(milliseconds: 100),
                  onTap: () {
                    if (sliderValue == true) {}
                  },
                  onDoubleTap: () {},
                  onSwipe: () {},
                  textOff: "Personal Info",
                  textOn: "Settings",
                  contentSize: 17.sp,
                  colorOn: const Color.fromARGB(
                    255,
                    3,
                    81,
                    92,
                  ),
                  colorOff: const Color.fromARGB(
                    255,
                    3,
                    81,
                    92,
                  ),
                  background: const Color.fromARGB(
                    255,
                    214,
                    227,
                    238,
                  ),
                  buttonColor: const Color(0xfff7f5f7),
                  inactiveColor: const Color(0xff636f7b),
                ),
                Container(
                  child: _items[index],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
