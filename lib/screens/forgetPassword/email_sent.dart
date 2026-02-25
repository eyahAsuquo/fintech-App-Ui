import 'package:fintech_ui/screens/forgetPassword/reset_password.dart';
import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:fintech_ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailSentPage extends StatefulWidget {
  const EmailSentPage({super.key});

  @override
  State<EmailSentPage> createState() => _EmailSentPageState();
}

class _EmailSentPageState extends State<EmailSentPage> {
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F8),
      appBar: AppBar(backgroundColor: const Color(0xFFF3F3F8)),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          mainAxisSize: .min,
          children: [
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/img/Frame 20469.png"),
                ),
              ),
            ),

            Text(
              "Your email is on the way",
              style: GoogleFonts.inter(
                fontSize: 20,
                fontWeight: .bold,
                color: deepBlue,
              ),
              textAlign: .center,
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55.0),
              child: Text(
                "Check your email and follow the instructions to reset your password",
                style: GoogleFonts.inter(fontSize: 14, color: black),
                textAlign: .center,
              ),
            ),
            SizedBox(height: 20),

            Spacer(),
            Button(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ResetPasswordPage()),
                );
              },
              text: "Continue",
              bgColor: blueColor,
              fgColor: white,
            ),
          ],
        ),
      ),
    );
  }
}
