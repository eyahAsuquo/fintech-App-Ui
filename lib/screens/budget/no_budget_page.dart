import 'package:fintech_ui/screens/budget/create_budget.dart';

import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:fintech_ui/widgets/button.dart';
import 'package:fintech_ui/widgets/pop_up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoBudgetPage extends StatelessWidget {
  const NoBudgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    //
    return Scaffold(
      backgroundColor: blueColor,
      appBar: AppBar(
        backgroundColor: blueColor,
        foregroundColor: white,
        elevation: 0,
        toolbarHeight: 90,
        title: Text("Budget"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.chevron_left, size: 25),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.of(context).pop();
            },
            icon: Icon(Icons.menu, size: 25),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 0,
          ).copyWith(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    Text(
                      "0",
                      style: GoogleFonts.inter(
                        color: white,
                        fontSize: 30,
                        fontWeight: .bold,
                      ),
                    ),
                    Text(
                      "You have no budget",
                      style: GoogleFonts.inter(
                        color: white,
                        fontSize: 12,
                        fontWeight: .w500,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: size.height * 0.7,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: .center,
                  children: [
                    Image.asset("assets/img/Piggybank.png"),
                    SizedBox(height: 30),
                    Text(
                      "Welcome",
                      style: GoogleFonts.inter(
                        color: deepBlue,
                        fontSize: 30,
                        fontWeight: .bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      child: Text(
                        "This is an overview of all your Brees account, so com back later",
                        style: GoogleFonts.inter(
                          color: deepBlue,
                          fontSize: 12,
                          fontWeight: .w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      child: Button(
                        onPressed: () {
                          showDialog(
                            context: (context),
                            builder: (_) => Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                              ).copyWith(top: 165, bottom: 150),
                              child: CardPopUp(
                                imgText: "assets/img/budgetGroup.png",
                                leadingText: "Budget",
                                titleText: "Overspend no more",
                                subText:
                                    "Get ready to start using budgets for your daily financial app.",
                                function: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => CreateBudgetPage(),
                                    ),
                                  );
                                },
                                buttonText: "Creat a New Budget",
                              ),
                            ),
                          );
                        },
                        text: "+ Add a new budget",
                        bgColor: blueColor,
                        fgColor: white,
                        size: Size(double.infinity, 30),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
