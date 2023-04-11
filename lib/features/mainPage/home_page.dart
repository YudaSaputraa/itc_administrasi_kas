import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 88.h,
                  width: double.infinity,
                  color: const Color.fromARGB(
                    255,
                    3,
                    81,
                    92,
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 3.h,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage(
                                    "assets/images/IrhasEfendi.jpeg"),
                              ),
                            ),
                            height: 9.h,
                            width: 30.w,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 4.h,
                          ),
                          Text(
                            "Hello, ",
                            style: GoogleFonts.poppins(
                              fontSize: 18.sp,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Irhas Effendi",
                            style: GoogleFonts.poppins(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          //bill
                          height: 23.h,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: SvgPicture.asset(
                                          "assets/icons/bill.svg",
                                          height: 3.h,
                                        ),
                                      ),
                                      Text(
                                        "Bill",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      IconButton(
                                          onPressed: null,
                                          icon:
                                              Icon(Icons.navigate_next_rounded))
                                    ],
                                  )
                                ],
                              ),
                              Positioned.fill(
                                child: Container(
                                  height: 14.h,
                                  child: Bill(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // History
                          height: 49.6.h,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: SvgPicture.asset(
                                          "assets/icons/history.svg",
                                          height: 3.h,
                                        ),
                                      ),
                                      Text(
                                        "History",
                                        style: GoogleFonts.poppins(
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      IconButton(
                                          onPressed: null,
                                          icon:
                                              Icon(Icons.navigate_next_rounded))
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                height: 42.h,
                                child: History(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Bill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          child: Row(
            children: [
              SizedBox(
                width: 2.h,
              ),
              SizedBox(
                width: 30.w,
                child: Card(
                  color: const Color.fromARGB(
                    255,
                    251,
                    251,
                    251,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "P1 2022",
                        style: GoogleFonts.poppins(
                          fontSize: 18.sp,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      SvgPicture.asset(
                        "assets/icons/pending.svg",
                        height: 5.h,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
      itemCount: 5,
    );
  }
}

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Container(
          child: Column(
            children: [
              SizedBox(
                width: 95.w,
                height: 10.h,
                child: Card(
                  color: const Color.fromARGB(
                    255,
                    251,
                    251,
                    251,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/icons/check.svg",
                              height: 5.5.h,
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Kas",
                                  style: GoogleFonts.poppins(
                                    fontSize: 18.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "10-10-2023, 00:23",
                                  style: GoogleFonts.poppins(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "-Rp 30.000",
                                  style: GoogleFonts.poppins(
                                    fontSize: 18.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  "BNI",
                                  style: GoogleFonts.poppins(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      itemCount: 6,
    );
  }
}
