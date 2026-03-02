import 'package:fintech_ui/screens/home/home_page.dart';
import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:fintech_ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountVerificationPage extends StatelessWidget {
  const AccountVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            // mainAxisAlignment: .center,
            // crossAxisAlignment: .center,
            // mainAxisSize: .min,
            children: [
              Spacer(),
              Text(
                "Coming Soon!",
                style: GoogleFonts.inter(
                  color: deepBlue,
                  fontWeight: .bold,
                  fontSize: 30,
                ),
              ),
              Spacer(),
              Button(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => HomePage()),
                  );
                },
                text: "Home",
                bgColor: blueColor,
                fgColor: white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
