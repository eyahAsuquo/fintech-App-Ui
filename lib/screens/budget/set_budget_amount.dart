import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:fintech_ui/widgets/button.dart';
import 'package:fintech_ui/widgets/form_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetBudgetAmountPage extends StatefulWidget {
  const SetBudgetAmountPage({super.key});

  @override
  State<SetBudgetAmountPage> createState() => _SetBudgetAmountPageState();
}

class _SetBudgetAmountPageState extends State<SetBudgetAmountPage> {
  TextEditingController selectedAccount = TextEditingController();

  @override
  void dispose() {
    selectedAccount.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.chevron_left),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                "Set a budget amount",
                style: GoogleFonts.inter(
                  color: deepBlue,
                  fontSize: 25,
                  fontWeight: .bold,
                ),
              ),
              SizedBox(height: 20),
              FormFields(
                readonly: true,
                labelText: "Select Account",
                controller: selectedAccount,
                obscureText: false,
                icon: TextButton(
                  onPressed: () {},
                  child: Icon(Icons.chevron_right, size: 25, color: blueColor),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  textAlign: TextAlign.center,
                  "Based on your input, you would have N12,000 left out of N22,000 in your Kuda Bank account",
                  style: GoogleFonts.inter(color: deepBlue, fontSize: 14),
                ),
              ),
              SizedBox(height: 80),
              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  "SET AMOUNT",
                  style: GoogleFonts.inter(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: .bold,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  CircleAvatar(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove),
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "0",
                    style: GoogleFonts.inter(
                      color: black,
                      fontSize: 25,
                      fontWeight: .bold,
                    ),
                  ),
                  CircleAvatar(
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: .spaceAround,
                children: [
                  Chip(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    side: BorderSide.none,
                    backgroundColor: const Color(0x6DACC5F1),
                    label: Text(
                      "N5,000",
                      style: GoogleFonts.inter(
                        color: blueColor,
                        fontWeight: .w500,
                      ),
                    ),
                  ),
                  Chip(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    side: BorderSide.none,
                    backgroundColor: const Color(0x6DACC5F1),
                    label: Text(
                      "N15,000",
                      style: GoogleFonts.inter(
                        color: blueColor,
                        fontWeight: .w500,
                      ),
                    ),
                  ),
                  Chip(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    side: BorderSide.none,
                    backgroundColor: const Color(0x6DACC5F1),
                    label: Text(
                      "N25,000",
                      style: GoogleFonts.inter(
                        color: blueColor,
                        fontWeight: .w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.25),
              Button(
                onPressed: () {},
                text: "Next",
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
