import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:fintech_ui/widgets/button.dart';
import 'package:fintech_ui/widgets/form_fields.dart';
import 'package:flutter/material.dart';

class SettingsResetPasswordPage extends StatefulWidget {
  const SettingsResetPasswordPage({super.key});

  @override
  State<SettingsResetPasswordPage> createState() =>
      _SettingsResetPasswordPageState();
}

class _SettingsResetPasswordPageState extends State<SettingsResetPasswordPage> {
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController retypePasswordController = TextEditingController();

  @override
  void dispose() {
    oldPasswordController.dispose();
    newPasswordController.dispose();
    retypePasswordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Password"),
        centerTitle: true,
        toolbarHeight: 90,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: Column(
          children: [
            Column(
              spacing: 30,
              children: [
                FormFields(
                  labelText: "Old Password",
                  controller: oldPasswordController,
                  obscureText: false,
                ),
                FormFields(
                  labelText: "New Password",
                  controller: newPasswordController,

                  obscureText: false,
                ),
                FormFields(
                  labelText: "Retype New Password",
                  controller: retypePasswordController,
                  obscureText: false,
                ),
              ],
            ),
            Spacer(),
            Button(
              onPressed: () {},
              text: "Save",
              fgColor: blueColor,
              bgColor: Color.fromARGB(108, 212, 194, 255),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
