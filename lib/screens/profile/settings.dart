import 'package:fintech_ui/screens/profile/notification.dart';
import 'package:fintech_ui/screens/profile/reset_password.dart';
import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:fintech_ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
        toolbarHeight: 90,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              "General",
              style: GoogleFonts.inter(
                color: Colors.grey.shade400,
                fontSize: 16,
                fontWeight: .bold,
              ),
            ),
            Column(
              spacing: 5,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 0),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => SettingsResetPasswordPage(),
                      ),
                    );
                  },

                  title: Text(
                    "Reset Password",
                    style: GoogleFonts.inter(
                      color: deepBlue,
                      fontSize: 14,
                      fontWeight: .bold,
                    ),
                  ),
                  trailing: Icon(Icons.chevron_right),
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 0),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => NotificationPage()),
                    );
                  },

                  title: Text(
                    "Notification",
                    style: GoogleFonts.inter(
                      color: deepBlue,
                      fontSize: 14,
                      fontWeight: .bold,
                    ),
                  ),
                  trailing: Icon(Icons.chevron_right),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "Security",
              style: GoogleFonts.inter(
                color: Colors.grey.shade400,
                fontSize: 16,
                fontWeight: .bold,
              ),
            ),

            Column(
              crossAxisAlignment: .start,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 0),
                  onTap: () {},

                  title: Text(
                    "Privacy Policy",
                    style: GoogleFonts.inter(
                      color: deepBlue,
                      fontSize: 14,
                      fontWeight: .bold,
                    ),
                  ),
                  trailing: Icon(Icons.chevron_right),
                ),
                Text(
                  "Choose what data you share with us",
                  style: GoogleFonts.inter(
                    color: Colors.grey.shade400,
                    fontSize: 12,
                    fontWeight: .w500,
                  ),
                ),
              ],
            ),

            Spacer(flex: 3),
            Button(
              onPressed: () {},
              text: "Logout",
              fgColor: blueColor,
              bgColor: Color.fromARGB(192, 240, 236, 250),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "Brees \u00A9 2021 v1.0 ",
                style: GoogleFonts.inter(
                  color: Colors.grey.shade500,
                  fontSize: 14,
                  fontWeight: .w600,
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
