import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountCard extends StatelessWidget {
  final String title, description, image;
  const AccountCard({
    super.key,
    required this.title,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,
      decoration: BoxDecoration(
        color: const Color(0x452195F3),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,

        children: [
          Flexible(
            child: Container(
              // color: blueColor,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                crossAxisAlignment: .start,
                mainAxisAlignment: .center,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.inter(
                      color: white,
                      fontWeight: .w600,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    description,
                    style: GoogleFonts.inter(color: white, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: AlignmentGeometry.bottomRight,
            child: Image.asset(image, fit: BoxFit.contain),
          ),
        ],
      ),
    );
  }
}
