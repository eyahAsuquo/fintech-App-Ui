import 'package:fintech_ui/screens/forgetPassword/reset_password.dart';
import 'package:fintech_ui/screens/home/home_page.dart';
import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:fintech_ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailSentSuccessPage extends StatefulWidget {
  const EmailSentSuccessPage({super.key});

  @override
  State<EmailSentSuccessPage> createState() => _EmailSentSuccessPageState();
}

class _EmailSentSuccessPageState extends State<EmailSentSuccessPage> {
  final TextEditingController emailController = TextEditingController();
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
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/img/glossy.png"),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Hi! 👋",
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: .bold,
                  color: deepBlue,
                ),
                textAlign: .center,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Text(
                  "Your password has been reset, you can now log back into your brees account",
                  style: GoogleFonts.inter(fontSize: 14, color: black),
                  textAlign: .center,
                ),
              ),
              SizedBox(height: 50),

              Button(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                text: "Go to Bress app",
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
