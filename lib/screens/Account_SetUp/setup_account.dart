import 'package:fintech_ui/screens/Account_SetUp/account_verification.dart';
import 'package:fintech_ui/screens/home/home_page.dart';
import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:fintech_ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetupAccountPage extends StatelessWidget {
  const SetupAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F8),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Spacer(),
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage("assets/img/glossy (2).png"),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Let's get your account set up!",
                style: GoogleFonts.inter(
                  fontSize: 24,
                  fontWeight: .bold,
                  color: deepBlue,
                ),
                textAlign: .center,
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Account can be your bank, credit card or your digital wallet.",
                  style: GoogleFonts.inter(fontSize: 16, color: black),
                  textAlign: .center,
                ),
              ),
              Spacer(),

              Button(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => AccountVerificationPage(),
                    ),
                  );
                },
                text: "Let's get started",
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
