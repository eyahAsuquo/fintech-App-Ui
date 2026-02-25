import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:fintech_ui/widgets/button.dart';
import 'package:fintech_ui/widgets/form_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool showPassword = false;
  bool? isChecked = false;

  @override
  void dispose() {
    super.dispose();

    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F3F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF3F3F8),
        title: Text(
          "Sign Up",
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
              "Welcome to Brees",
              style: GoogleFonts.inter(
                fontSize: 24,
                fontWeight: .bold,
                color: deepBlue,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Complete the sign up to get started",
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: .w400,
                color: deepBlue,
              ),
            ),
            SizedBox(height: 20),
            Form(
              child: Column(
                children: [
                  FormFields(
                    labelText: "Name",
                    controller: nameController,
                    obscureText: false,
                  ),
                  SizedBox(height: 20),
                  FormFields(
                    obscureText: false,
                    labelText: "Email",
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 20),
                  FormFields(
                    labelText: "Password",
                    controller: passwordController,
                    obscureText: true,
                    icon: IconButton(
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      icon: showPassword
                          ? Icon(Icons.visibility_off, color: blueColor)
                          : Icon(Icons.visibility, color: blueColor),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  activeColor: blueColor,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                ),
                RichText(
                  text: TextSpan(
                    text: "By signing up, you agree to the",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: black,
                      fontWeight: .w500,
                    ),
                    children: [
                      TextSpan(
                        text: " Terms of \nService and Privacy Policy",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: blueColor,
                          fontWeight: .w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: .spaceAround,

              children: [
                Expanded(
                  child: Button(
                    onPressed: () {},
                    text: "Register",
                    bgColor: const Color(0xFFEBF0F8),
                    fgColor: blueColor,
                  ),
                ),
                SizedBox(width: 30),
                Expanded(
                  flex: 2,
                  child: Button(
                    onPressed: () {},
                    text: "Login",
                    bgColor: blueColor,
                    fgColor: white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
