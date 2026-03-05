import 'package:fintech_ui/screens/insight/view_insight.dart';
import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InsightPage extends StatelessWidget {
  const InsightPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    //
    return Scaffold(
      backgroundColor: blueColor,
      appBar: AppBar(
        backgroundColor: blueColor,
        foregroundColor: white,
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 90,
        title: Text("Insights"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: size.height * 0.09,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    decoration: BoxDecoration(
                      color: deepBlue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: .spaceBetween,
                      crossAxisAlignment: .center,
                      children: [
                        //first inner row
                        Row(
                          spacing: 8,

                          children: [
                            Image.asset("assets/img/insight Icon.png"),
                            Column(
                              crossAxisAlignment: .start,
                              mainAxisAlignment: .center,
                              children: [
                                Text(
                                  "Insight",
                                  style: GoogleFonts.inter(
                                    color: white,
                                    fontSize: 18,
                                    fontWeight: .bold,
                                  ),
                                ),
                                Text(
                                  "Balance Trend",
                                  style: GoogleFonts.inter(
                                    color: white,
                                    fontSize: 12,
                                    // fontWeight: .bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        //second inner row
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: .start,
                              mainAxisAlignment: .center,
                              children: [
                                Text(
                                  "N98,432.65",
                                  style: GoogleFonts.inter(
                                    color: white,
                                    fontSize: 18,
                                    fontWeight: .bold,
                                  ),
                                ),
                                Text(
                                  "+4.3% vs last week",
                                  style: GoogleFonts.inter(
                                    color: white,
                                    fontSize: 12,
                                    // fontWeight: .bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: size.height * 0.7,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: .start,
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      "Recent updates",
                      style: GoogleFonts.inter(
                        color: blueColor,
                        fontSize: 12,
                        fontWeight: .w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    ListTile(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (_) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 109.0,
                                horizontal: 30,
                              ),
                              child: InsightPopUpCard(),
                            );
                          },
                        );
                      },
                      leading: CircleAvatar(
                        backgroundColor: deepBlue,
                        foregroundColor: deepBlue,
                        radius: 20,
                        child: Image.asset("assets/img/glossy.png"),
                      ),
                      title: Text(
                        "Brees",
                        style: GoogleFonts.inter(
                          color: deepBlue,
                          fontSize: 14,
                          fontWeight: .bold,
                        ),
                      ),
                      subtitle: Text(
                        "click to view your insights",
                        style: GoogleFonts.inter(color: deepBlue, fontSize: 11),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: deepBlue,
                        foregroundColor: deepBlue,
                        radius: 20,
                        child: Image.asset("assets/img/glossy.png"),
                      ),
                      title: Text(
                        "Piggyvest",
                        style: GoogleFonts.inter(
                          color: deepBlue,
                          fontSize: 14,
                          fontWeight: .bold,
                        ),
                      ),
                      // subtitle: Text(
                      //   "click to view your insights",
                      //   style: GoogleFonts.inter(color: deepBlue, fontSize: 11),
                      // ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: deepBlue,
                        foregroundColor: deepBlue,
                        radius: 20,
                        child: Image.asset("assets/img/glossy.png"),
                      ),
                      title: Text(
                        "Paystack",
                        style: GoogleFonts.inter(
                          color: deepBlue,
                          fontSize: 14,
                          fontWeight: .bold,
                        ),
                      ),
                      // subtitle: Text(
                      //   "click to view your insights",
                      //   style: GoogleFonts.inter(color: deepBlue, fontSize: 11),
                      // ),
                    ),
                    SizedBox(height: 20),
                    //
                    Text(
                      "Viewed updates",
                      style: GoogleFonts.inter(
                        color: blueColor,
                        fontSize: 12,
                        fontWeight: .w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: deepBlue,
                        foregroundColor: deepBlue,
                        radius: 20,
                        child: Image.asset("assets/img/glossy (2).png"),
                      ),
                      title: Text(
                        "Carbon",
                        style: GoogleFonts.inter(
                          color: deepBlue,
                          fontSize: 14,
                          fontWeight: .bold,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: deepBlue,
                        foregroundColor: deepBlue,
                        radius: 20,
                        child: Image.asset("assets/img/glossy (2).png"),
                      ),
                      title: Text(
                        "Abeg",
                        style: GoogleFonts.inter(
                          color: deepBlue,
                          fontSize: 14,
                          fontWeight: .bold,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: deepBlue,
                        foregroundColor: deepBlue,
                        radius: 20,
                        child: Image.asset("assets/img/glossy (2).png"),
                      ),
                      title: Text(
                        "Patricia",
                        style: GoogleFonts.inter(
                          color: deepBlue,
                          fontSize: 14,
                          fontWeight: .bold,
                        ),
                      ),
                      // subtitle: Text(
                      //   "click to view your insights",
                      //   style: GoogleFonts.inter(color: deepBlue, fontSize: 11),
                      // ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
