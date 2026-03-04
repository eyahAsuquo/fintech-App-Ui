import 'package:fintech_ui/screens/home/home_page.dart';
import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:fintech_ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FinalizeBudgetPage extends StatelessWidget {
  const FinalizeBudgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: blueColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: .spaceEvenly,
          children: [
            Column(
              children: [
                Image.asset("assets/img/Piggybank_pig.png"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    spacing: 10,
                    children: [
                      Text(
                        "Mmm… we love your “new budget” smell.",
                        style: GoogleFonts.inter(
                          color: white,
                          fontSize: 30,
                          fontWeight: .bold,
                        ),
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        "Awesome! Your new Monthly Budget is up and running.",
                        style: GoogleFonts.inter(
                          color: const Color.fromARGB(255, 189, 189, 189),
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // SizedBox(height: size.height * 0.3),
            Button(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => HomePage()),
                );
              },
              text: "Set Budget",
              fgColor: blueColor,
              bgColor: white,
            ),
          ],
        ),
      ),
    );
  }
}
