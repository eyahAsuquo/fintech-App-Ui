import 'package:fintech_ui/screens/Account_SetUp/account_setup.dart';
import 'package:fintech_ui/screens/Account_SetUp/setup_account.dart';

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
      home: SetupAccountPage(),
    );
  }
}
