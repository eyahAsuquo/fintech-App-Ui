import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountVerificationPage extends StatelessWidget {
  const AccountVerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Center(
        child: Text(
          "Coming Soon!",
          style: GoogleFonts.inter(
            color: deepBlue,
            fontWeight: .bold,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
