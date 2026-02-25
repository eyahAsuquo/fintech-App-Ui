import 'package:fintech_ui/screens/forgetPassword/email_sent.dart';
import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:fintech_ui/widgets/button.dart';
import 'package:fintech_ui/widgets/form_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF3F3F8),
        title: Text(
          "Forget Password",
          style: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: .w500,
            color: black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
        child: Column(
          mainAxisAlignment: .start,
          crossAxisAlignment: .start,
          children: [
            Text(
              "Enter your email and we’ll send you a link to reset your password.",
              style: GoogleFonts.inter(
                fontSize: 24,
                fontWeight: .bold,
                color: deepBlue,
              ),
            ),
            SizedBox(height: 20),

            FormFields(
              obscureText: false,
              labelText: "Email",
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
            ),
            Spacer(),
            Button(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => EmailSentPage()),
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
