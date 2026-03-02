import 'package:fintech_ui/screens/home/account_card_page.dart';
import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      appBar: AppBar(
        toolbarHeight: 150,
        automaticallyImplyLeading: false,
        backgroundColor: blueColor,
        elevation: 0,
        title: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              "Hello",
              style: GoogleFonts.inter(
                color: white,
                fontWeight: .bold,
                fontSize: 18,
              ),
            ),
            Text(
              "Your finances are looking good",
              style: GoogleFonts.inter(
                color: white,
                fontWeight: .bold,
                fontSize: 12,
              ),
            ),
          ],
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0x52002D52),
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_outlined, color: Colors.white),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: const Color(0x52002D52),
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_outlined, color: Colors.white),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Container(
                  width: double.infinity,
                  height: 350,
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color(0x52002D52),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: .end,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => AccountCardPage(),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.chevron_right_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        radius: 30,
                        child: Icon(Icons.person_2, size: 50),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Your available balance is",
                        style: GoogleFonts.inter(color: white, fontSize: 12),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "N20,983",
                        style: GoogleFonts.inter(
                          color: white,
                          fontWeight: .bold,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60.0),
                        child: Text(
                          "By this time last month, you spent slightly higher (N22,719)",
                          style: GoogleFonts.inter(color: white, fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        spacing: 15.0,

                        children: [
                          Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              Text(
                                "Kuda Bank",
                                style: GoogleFonts.inter(
                                  color: white,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "N12,000.00",
                                style: GoogleFonts.inter(
                                  color: white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              Text(
                                "GT Bank",
                                style: GoogleFonts.inter(
                                  color: white,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "NN950.00",
                                style: GoogleFonts.inter(
                                  color: white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: .spaceBetween,
                            children: [
                              Text(
                                "PiggyVest",
                                style: GoogleFonts.inter(
                                  color: white,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "N1,050.00",
                                style: GoogleFonts.inter(
                                  color: white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 80,
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color(0x52002D52),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    // mainAxisSize: .min,
                    spacing: 20,
                    children: [
                      CircleAvatar(
                        backgroundColor: blueColor,
                        foregroundColor: white,
                        radius: 20,
                        child: Icon(Icons.settings),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: .start,
                          mainAxisSize: .min,
                          children: [
                            Text(
                              "Sort your transactions",
                              style: GoogleFonts.inter(
                                color: white,
                                fontSize: 14,
                                fontWeight: .bold,
                              ),
                            ),
                            Text(
                              "Get points for sorting your transactions",
                              style: GoogleFonts.inter(
                                color: white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.chevron_right_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "My Budgets",
                  style: GoogleFonts.inter(color: white, fontWeight: .w500),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,

                  height: 180,
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color(0xFF3A37FF),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Text(
                            "You have",
                            style: GoogleFonts.inter(color: white),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.chevron_right_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),

                      Text(
                        "N20,983",
                        style: GoogleFonts.inter(
                          color: white,
                          fontWeight: .bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Left out of N80,888 budgeted",
                        style: GoogleFonts.inter(color: white, fontSize: 12),
                      ),
                      SizedBox(height: 20),

                      //add indicator
                      LinearProgressIndicator(
                        value: 0.7,
                        backgroundColor: Color(0x52002D52),
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                      ),

                      SizedBox(height: 20),
                      Text(
                        "😱 Sapa go soon catch you bros, calm down!",
                        style: GoogleFonts.inter(color: white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Transactions",
                  style: GoogleFonts.inter(color: white, fontWeight: .w500),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.3,
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color(0xFF3A37FF),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Text(
                            "Recent Transactions",
                            style: GoogleFonts.inter(color: white),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.chevron_right_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        spacing: 2,
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: const Color(0xFFEFF5EF),
                              child: Text(
                                "J",
                                style: GoogleFonts.inter(
                                  color: deepBlue,
                                  fontWeight: .w600,
                                ),
                              ),
                            ),
                            title: Text(
                              "John Ogaga",
                              style: GoogleFonts.inter(
                                color: white,
                                fontWeight: .bold,
                              ),
                            ),
                            subtitle: Text(
                              "Zenith Bank 12:03 AM",
                              style: GoogleFonts.inter(
                                color: white,
                                fontSize: 12,
                              ),
                            ),
                            trailing: Text(
                              "+N20,983",
                              style: GoogleFonts.inter(
                                color: const Color(0xFFC7F5C8),
                                fontSize: 12,
                                fontWeight: .bold,
                              ),
                            ),
                          ),

                          //
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: const Color(0xFFEFF5EF),
                              child: Text(
                                "H",
                                style: GoogleFonts.inter(
                                  color: deepBlue,
                                  fontWeight: .w600,
                                ),
                              ),
                            ),
                            title: Text(
                              "Habib Yogurt",
                              style: GoogleFonts.inter(
                                color: white,
                                fontWeight: .bold,
                              ),
                            ),
                            subtitle: Text(
                              "GT-Bank 12:03 AM",
                              style: GoogleFonts.inter(
                                color: white,
                                fontSize: 12,
                              ),
                            ),
                            trailing: Text(
                              "-N20,983",
                              style: GoogleFonts.inter(
                                color: white,
                                fontSize: 12,
                                fontWeight: .bold,
                              ),
                            ),
                          ),
                          //
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: const Color(0xFFEFF5EF),
                              child: Text(
                                "C",
                                style: GoogleFonts.inter(
                                  color: deepBlue,
                                  fontWeight: .w600,
                                ),
                              ),
                            ),
                            title: Text(
                              "Christian Oku",
                              style: GoogleFonts.inter(
                                color: white,
                                fontWeight: .bold,
                              ),
                            ),
                            subtitle: Text(
                              "Zenith Bank 12:03 AM",
                              style: GoogleFonts.inter(
                                color: white,
                                fontSize: 12,
                              ),
                            ),
                            trailing: Text(
                              "+N100,983",
                              style: GoogleFonts.inter(
                                color: const Color(0xFFC7F5C8),
                                fontSize: 12,
                                fontWeight: .bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
