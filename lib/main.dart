import 'package:fintech_ui/screens/forgetPassword/email_sent.dart';
import 'package:fintech_ui/screens/logIn/log_in.dart';
import 'package:fintech_ui/screens/onboarding/onboarding_card.dart';
import 'package:fintech_ui/screens/onboarding/onboarding_screen.dart';
import 'package:fintech_ui/screens/signUp/sign_up.dart';

import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fintech UI',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: blueColor)),
      home: EmailSentPage(),
    );
  }
}
