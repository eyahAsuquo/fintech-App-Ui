import 'package:fintech_ui/screens/forgetPassword/forget_password.dart';
import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:fintech_ui/widgets/button.dart';
import 'package:fintech_ui/widgets/form_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool showPassword = false;

  @override
  void dispose() {
    super.dispose();

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
          "Login",
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
              "Welcome back",
              style: GoogleFonts.inter(
                fontSize: 24,
                fontWeight: .bold,
                color: deepBlue,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Hey you’re back, fill in your details to get back in",
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
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: .end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ForgetPasswordPage(),
                      ),
                    );
                  },
                  child: Text(
                    "Forget Password?",
                    style: GoogleFonts.inter(
                      color: blueColor,
                      fontWeight: .w600,
                      fontSize: 13,
                    ),
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
