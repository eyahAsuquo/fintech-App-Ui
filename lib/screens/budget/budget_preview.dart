import 'package:fintech_ui/screens/budget/finalize_budget.dart';
import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:fintech_ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BudgetPreviewPage extends StatefulWidget {
  const BudgetPreviewPage({super.key});

  @override
  State<BudgetPreviewPage> createState() => _BudgetPreviewPageState();
}

class _BudgetPreviewPageState extends State<BudgetPreviewPage> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.chevron_left),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.edit))],
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
                "Budget Preview",
                style: GoogleFonts.inter(
                  color: deepBlue,
                  fontWeight: .bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: size.height * 0.2,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: blueColor,
                ),
                child: Column(
                  crossAxisAlignment: .start,
                  spacing: 20,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Monthly Budget",
                          style: GoogleFonts.inter(color: white),
                        ),
                      ],
                    ),
                    // SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Row(
                          spacing: 10,
                          children: [
                            Image.asset(
                              "assets/img/lottie.png",
                              fit: BoxFit.contain,
                            ),
                            Column(
                              crossAxisAlignment: .start,
                              children: [
                                Text(
                                  "Flexxing Budget",
                                  style: GoogleFonts.inter(
                                    color: white,
                                    fontWeight: .bold,
                                  ),
                                ),
                                Text(
                                  "N140 daily",
                                  style: GoogleFonts.inter(color: white),
                                ),
                              ],
                            ),
                          ],
                        ),

                        Text(
                          "N18,241",
                          style: GoogleFonts.inter(
                            color: const Color(0xFFDCEEC8),
                            fontWeight: .w500,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(height: 20),
                    LinearProgressIndicator(
                      value: 100,
                      color: const Color.fromARGB(34, 6, 10, 0),

                      borderRadius: BorderRadius.circular(90),
                    ),
                    // SizedBox(height: 20),
                    Text(
                      "🥰 Ready to get your budget game started!",
                      style: GoogleFonts.inter(color: white, fontSize: 12),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Budget source",
                style: GoogleFonts.inter(
                  color: const Color(0xFF000000),
                  fontSize: 14,
                  fontWeight: .bold,
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Image.asset("assets/img/Kuda.png"),
                title: Text(
                  "Kuda Bank",
                  style: GoogleFonts.inter(
                    color: const Color(0xFF000000),
                    fontSize: 14,
                    fontWeight: .bold,
                  ),
                ),
                subtitle: Row(
                  spacing: 4,
                  children: [
                    Text(
                      "Account Balance",
                      style: GoogleFonts.inter(
                        color: const Color(0xFF000000),
                        fontSize: 11,
                      ),
                    ),
                    Text(
                      "\$2,987.56",
                      style: GoogleFonts.inter(
                        color: const Color(0xFF000000),
                        fontSize: 11,
                        fontWeight: .w700,
                      ),
                    ),
                  ],
                ),
                trailing: InkWell(
                  onTap: () {},
                  child: Text(
                    "Change",
                    style: GoogleFonts.inter(
                      color: blueColor,
                      fontSize: 14,
                      fontWeight: .bold,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),
              Text(
                "Start date",
                style: GoogleFonts.inter(
                  color: const Color(0xFF000000),
                  fontSize: 14,
                  fontWeight: .bold,
                ),
              ),
              // SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.calendar_month, color: blueColor),
                title: Text(
                  "Jan 20th 2022",
                  style: GoogleFonts.inter(
                    color: const Color(0xFF000000),
                    fontSize: 14,
                    fontWeight: .w600,
                  ),
                ),
                subtitle: Text(
                  "Monthly budget",
                  style: GoogleFonts.inter(
                    color: const Color(0xFF000000),
                    fontSize: 12,
                    // fontWeight: .w700,
                  ),
                ),
                trailing: InkWell(
                  onTap: () {},
                  child: Text(
                    "Change",
                    style: GoogleFonts.inter(
                      color: blueColor,
                      fontSize: 14,
                      fontWeight: .bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Receive Alert",
                style: GoogleFonts.inter(
                  color: const Color(0xFF000000),
                  fontSize: 14,
                  fontWeight: .bold,
                ),
              ),
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text(
                    "Receive alert when it\nreaches a certain limit",
                    style: GoogleFonts.inter(
                      color: const Color(0xFF949494),
                      fontSize: 14,
                    ),
                  ),

                  Switch(
                    value: isOn,
                    inactiveThumbColor: white,
                    inactiveTrackColor: Colors.grey,

                    thumbColor: WidgetStateProperty.resolveWith((states) {
                      if (states.contains(WidgetState.selected)) {
                        return Colors.white;
                      }
                      return Colors.grey.shade400;
                    }),

                    trackColor: WidgetStateProperty.resolveWith((states) {
                      if (states.contains(WidgetState.selected)) {
                        return blueColor;
                      }
                      return Colors.grey.shade200;
                    }),

                    trackOutlineColor: WidgetStateProperty.resolveWith((
                      states,
                    ) {
                      if (states.contains(WidgetState.selected)) {
                        return blueColor;
                      }
                      return Colors.grey.shade200;
                    }),

                    trackOutlineWidth: WidgetStateProperty.all(1.5),

                    onChanged: (value) {
                      setState(() {
                        isOn = !isOn;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.08),
              Button(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => FinalizeBudgetPage()),
                  );
                },
                text: "Create budget",
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
