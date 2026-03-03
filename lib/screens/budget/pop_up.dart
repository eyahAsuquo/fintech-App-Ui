import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:fintech_ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPopUp extends StatelessWidget {
  final String imgText, leadingText, titleText, subText, buttonText;
  final VoidCallback function;
  const CardPopUp({
    super.key,
    required this.imgText,
    required this.leadingText,
    required this.titleText,
    required this.subText,
    required this.function,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: blueColor,
      ),
      // width: double.infinity,
      // height: size.height * 0.9,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: .end,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.cancel,
                  color: const Color(0xACF3EBEB),
                  size: 30,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Image.asset(imgText),
          SizedBox(height: 20),
          Column(
            spacing: 15,
            children: [
              Text(
                leadingText,
                style: GoogleFonts.inter(
                  decoration: TextDecoration.none,
                  color: white,
                  fontSize: 14,
                  fontWeight: .bold,
                ),
              ),
              Text(
                titleText,
                style: GoogleFonts.inter(
                  decoration: TextDecoration.none,
                  color: white,
                  fontSize: 25,
                  fontWeight: .bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Text(
                  subText,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    decoration: TextDecoration.none,
                    color: white,
                    fontSize: 12,
                    fontWeight: .w500,
                    height: 2,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 65),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Button(
              onPressed: function,
              text: buttonText,
              fgColor: blueColor,
              bgColor: white,
            ),
          ),
        ],
      ),
    );
  }
}
