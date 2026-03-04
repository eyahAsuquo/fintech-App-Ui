import 'package:fintech_ui/screens/profile/my_account.dart';
import 'package:fintech_ui/screens/profile/settings.dart';
import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    //
    return Scaffold(
      backgroundColor: blueColor,
      appBar: AppBar(
        backgroundColor: blueColor,
        foregroundColor: white,
        elevation: 0,
        toolbarHeight: 70,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: Text("Profile", style: GoogleFonts.inter(color: white)),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Edit Profile",
                  style: GoogleFonts.inter(color: white),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Row(
                      spacing: 8,

                      children: [
                        Image.asset("assets/img/Avatar.png"),
                        Column(
                          crossAxisAlignment: .start,
                          mainAxisAlignment: .center,
                          children: [
                            Text(
                              "Donye Collins",
                              style: GoogleFonts.inter(
                                color: white,
                                fontSize: 18,
                                fontWeight: .bold,
                              ),
                            ),
                            Text(
                              "iamcollinsdonny@gmail.com",
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
            child: Column(
              mainAxisAlignment: .start,
              crossAxisAlignment: .start,
              spacing: 20,
              children: [
                ListTile(
                  onTap: () => Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (_) => MyAccountPage())),
                  leading: CircleAvatar(
                    backgroundColor: const Color.fromARGB(111, 64, 195, 255),

                    radius: 20,
                    child: Icon(Icons.person_2, color: deepBlue),
                  ),
                  title: Text(
                    "My Account",
                    style: GoogleFonts.inter(
                      color: deepBlue,
                      fontSize: 14,
                      fontWeight: .bold,
                    ),
                  ),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  onTap: () => Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (_) => SettingPage())),
                  leading: CircleAvatar(
                    backgroundColor: const Color.fromARGB(111, 64, 195, 255),

                    radius: 20,
                    child: Icon(Icons.settings, color: deepBlue),
                  ),
                  title: Text(
                    "Settings",
                    style: GoogleFonts.inter(
                      color: deepBlue,
                      fontSize: 14,
                      fontWeight: .bold,
                    ),
                  ),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  onTap: () {},
                  leading: CircleAvatar(
                    backgroundColor: const Color.fromARGB(111, 64, 195, 255),

                    radius: 20,
                    child: Icon(Icons.question_mark, color: deepBlue),
                  ),
                  title: Text(
                    "Help Center",
                    style: GoogleFonts.inter(
                      color: deepBlue,
                      fontSize: 14,
                      fontWeight: .bold,
                    ),
                  ),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  onTap: () {},
                  leading: CircleAvatar(
                    backgroundColor: const Color.fromARGB(111, 64, 195, 255),

                    radius: 20,
                    child: Icon(Icons.phone, color: deepBlue),
                  ),
                  title: Text(
                    "Contact",
                    style: GoogleFonts.inter(
                      color: deepBlue,
                      fontSize: 14,
                      fontWeight: .bold,
                    ),
                  ),
                  trailing: Icon(Icons.chevron_right),
                ),
                Spacer(flex: 3),
                //
                Text(
                  "You joined Brees on September 2021. It’s been 1 month since then and our mission is still the same, help you better manage your finance like a brees.",
                  textAlign: TextAlign.center,

                  style: GoogleFonts.inter(
                    color: Colors.grey.shade400,
                    fontSize: 12,
                    fontWeight: .w600,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
