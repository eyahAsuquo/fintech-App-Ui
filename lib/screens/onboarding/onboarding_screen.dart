import 'package:fintech_ui/screens/onboarding/model.dart';
import 'package:fintech_ui/screens/onboarding/onboarding_card.dart';
import 'package:fintech_ui/screens/signUp/sign_up.dart';

import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late final PageController _controller = PageController(initialPage: 0);

  // @override
  // void initState() {
  //   super.initState();
  //   _controller = PageController(initialPage: 0);
  // }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(pagesData.length, (index) {
      final data = pagesData[index];

      return OnboardingCard(
        image: data["image"] as String,
        title: data["title"] as String,
        description: data["description"] as String,
        buttonText: index == pagesData.length - 1 ? "Get Started" : "Next",

        button: index == pagesData.length - 1
            ? null
            : TextButton(
                style: TextButton.styleFrom(foregroundColor: white),
                onPressed: () {
                  _controller.animateToPage(
                    pagesData.length - 1,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease,
                  );
                },
                child: const Text("skip"),
              ),

        onPressed: () {
          index == pagesData.length - 1
              ? Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => SignUpPage()))
              : _controller.animateToPage(
                  index + 1,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease,
                );
        },
        controller: _controller,
        count: pagesData.length,
        bgColor: blueColor,
        fgColor: white,
      );
    });

    return Scaffold(
      backgroundColor: blueColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
          child: Column(
            children: [
              Expanded(
                child: PageView(controller: _controller, children: pages),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
