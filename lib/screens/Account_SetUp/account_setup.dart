import 'package:fintech_ui/screens/Account_SetUp/widgets/account_card.dart';

import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountSetUp extends StatelessWidget {
  const AccountSetUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Row(
                mainAxisAlignment: .end,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0x452195F3),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Skip",
                      style: GoogleFonts.inter(color: white, fontWeight: .w600),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),

              Text(
                "Get started",
                style: GoogleFonts.inter(
                  color: white,
                  fontWeight: .bold,
                  fontSize: 24,
                ),
              ),
              Text(
                "Get most out of your Brees account",
                style: GoogleFonts.inter(color: white),
              ),
              SizedBox(height: 50),
              AccountCard(
                title: "Verify your email address",
                description:
                    "This is the bank account we would \n track and manage your spendings",
                image: "assets/img/E-mail_perspective_matte_s 1.png",
              ),
              SizedBox(height: 30),
              AccountCard(
                title: "Connect your bank account",
                description:
                    "This is the bank account we would \n track and manage your spendings",
                image: "assets/img/bank.png",
              ),
              SizedBox(height: 30),
              AccountCard(
                title: "Tell us more about you",
                description:
                    "This is the bank account we would \n track and manage your spendings",
                image: "assets/img/User_perspective_matte 1.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
