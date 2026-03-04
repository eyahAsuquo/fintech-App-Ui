import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:fintech_ui/widgets/button.dart';
import 'package:fintech_ui/widgets/form_fields.dart';
import 'package:flutter/material.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage({super.key});

  @override
  State<MyAccountPage> createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Account"),
        centerTitle: true,
        toolbarHeight: 90,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: Column(
          children: [
            Image.asset("assets/img/Avatar.png", scale: 0.7),
            SizedBox(height: 80),
            Column(
              spacing: 30,
              children: [
                FormFields(
                  labelText: "Name",
                  controller: nameController,
                  obscureText: false,
                ),
                FormFields(
                  labelText: "Name",
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                ),
                FormFields(
                  labelText: "Name",
                  controller: phoneNumberController,
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
