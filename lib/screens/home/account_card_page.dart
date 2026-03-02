import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:fintech_ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountCardPage extends StatelessWidget {
  const AccountCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.chevron_left, size: 30),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: size.height * 0.05),
              Text(
                "Your available balance is",
                style: GoogleFonts.inter(color: Colors.grey, fontSize: 14),
              ),
              Text(
                "N20,983",
                style: GoogleFonts.inter(
                  color: black,
                  fontWeight: .bold,
                  fontSize: 35,
                ),
              ),
              SizedBox(height: size.height * 0.07),
              Expanded(
                flex: 20,
                child: SingleChildScrollView(
                  child: Column(
                    spacing: 20,
                    children: [
                      ListTile(
                        leading: Image.asset("assets/img/Kuda.png"),
                        title: Text(
                          "Kuda Bank",
                          style: GoogleFonts.inter(
                            color: black,
                            fontWeight: .bold,
                          ),
                        ),

                        trailing: Text(
                          "N120,000",
                          style: GoogleFonts.inter(
                            color: black,
                            fontSize: 16,
                            fontWeight: .w500,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset("assets/img/GT.png"),
                        title: Text(
                          "GT Bank",
                          style: GoogleFonts.inter(
                            color: black,
                            fontWeight: .bold,
                          ),
                        ),

                        trailing: Text(
                          "1,050.00",
                          style: GoogleFonts.inter(
                            color: black,
                            fontSize: 16,
                            fontWeight: .w500,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset("assets/img/piggyVest.png"),
                        title: Text(
                          "PiggyVest",
                          style: GoogleFonts.inter(
                            color: black,
                            fontWeight: .bold,
                          ),
                        ),

                        trailing: Text(
                          "6,083.00",
                          style: GoogleFonts.inter(
                            color: black,
                            fontSize: 16,
                            fontWeight: .w500,
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset("assets/img/UBA.png"),
                        title: Text(
                          "UBA",
                          style: GoogleFonts.inter(
                            color: black,
                            fontWeight: .bold,
                          ),
                        ),

                        trailing: Text(
                          "N950",
                          style: GoogleFonts.inter(
                            color: black,
                            fontSize: 16,
                            fontWeight: .w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Button(
                onPressed: () {},
                text: "+ Add new account",
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
