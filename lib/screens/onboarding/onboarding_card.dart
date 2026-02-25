import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:fintech_ui/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingCard extends StatelessWidget {
  final String image;
  final String title, description, buttonText;
  final VoidCallback onPressed;
  final PageController controller;
  final int count;
  final Widget? button;
  final Color? bgColor, fgColor;

  const OnboardingCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onPressed,
    required this.controller,
    required this.count,
    this.button,
    this.bgColor,
    this.fgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 40),

              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    mainAxisAlignment: .center,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.inter(
                          height: 1,
                          color: deepBlue,
                          fontWeight: .bold,
                          fontSize: 24,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Text(
                        description,
                        style: GoogleFonts.inter(
                          color: deepBlue,
                          fontWeight: .w400,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      SizedBox(height: 40),
                      SmoothPageIndicator(controller: controller, count: count),
                      SizedBox(height: 20),
                      Button(onPressed: onPressed, text: buttonText),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        if (button != null) Positioned(top: 0, right: 0, child: button!),
      ],
    );
  }
}
