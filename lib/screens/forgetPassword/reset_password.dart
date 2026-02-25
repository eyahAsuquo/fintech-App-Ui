import 'package:fintech_ui/screens/home/home_page.dart';
import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:fintech_ui/widgets/button.dart';
import 'package:fintech_ui/widgets/form_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final TextEditingController resetPasswordController = TextEditingController();
  final TextEditingController reTypePasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F8),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100.0, horizontal: 20),
          child: Column(
            mainAxisAlignment: .start,
            crossAxisAlignment: .start,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/img/Padlock_perspective_matte 1.png",
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Set your password",
                style: GoogleFonts.inter(
                  fontSize: 24,
                  fontWeight: .bold,
                  color: deepBlue,
                ),
              ),

              SizedBox(height: 10),
              Text(
                "Please create your new account password for Bress",
                style: GoogleFonts.inter(fontSize: 14, color: black),
              ),
              SizedBox(height: 20),

              Form(
                child: Column(
                  children: [
                    FormFields(
                      obscureText: false,
                      labelText: "Password",
                      controller: resetPasswordController,
                    ),
                    SizedBox(height: 30),
                    FormFields(
                      obscureText: false,
                      labelText: "Retype Password",
                      controller: reTypePasswordController,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Button(
                onPressed: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => HomePage()));
                },
                text: "Continue",
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
