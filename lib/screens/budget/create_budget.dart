import 'package:fintech_ui/screens/budget/set_budget_amount.dart';
import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:fintech_ui/widgets/button.dart';
import 'package:fintech_ui/widgets/form_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateBudgetPage extends StatefulWidget {
  const CreateBudgetPage({super.key});

  @override
  State<CreateBudgetPage> createState() => _CreateBudgetPageState();
}

class _CreateBudgetPageState extends State<CreateBudgetPage> {
  TextEditingController budgetTitle = TextEditingController();
  TextEditingController dateTime = TextEditingController();
  TextEditingController selectAccount = TextEditingController();

  @override
  void dispose() {
    budgetTitle.dispose();
    dateTime.dispose();
    selectAccount.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        title: Text("Add Budget"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.chevron_left, size: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ).copyWith(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                "Create your budget",
                style: GoogleFonts.inter(
                  color: deepBlue,
                  fontSize: 25,
                  fontWeight: .bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Set the maximum you'd like to spend each week or month? Type in the amount below",
                style: GoogleFonts.inter(color: deepBlue, fontSize: 14),
              ),
              SizedBox(height: 20),

              //
              Column(
                spacing: 20,
                children: [
                  FormFields(
                    labelText: "Name of Budget",
                    controller: budgetTitle,
                    obscureText: false,
                  ),
                  FormFields(
                    readonly: true,
                    labelText: "Cycle of budget",
                    controller: dateTime,
                    obscureText: false,
                    icon: TextButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.calendar_month,
                        size: 25,
                        color: blueColor,
                      ),
                    ),
                  ),
                  FormFields(
                    readonly: true,
                    labelText: "Select Account",
                    controller: selectAccount,
                    obscureText: false,
                    icon: TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (_) => SetBudgetAmountPage(),
                        );
                      },
                      child: Icon(
                        Icons.chevron_right,
                        size: 25,
                        color: blueColor,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: size.height * 0.25),
              Button(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => SetBudgetAmountPage()),
                  );
                },
                text: "Continue",
                fgColor: white,
                bgColor: blueColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
