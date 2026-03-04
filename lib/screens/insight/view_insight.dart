import 'package:fintech_ui/widgets/pop_up.dart';
import 'package:flutter/material.dart';

class InsightPopUpCard extends StatelessWidget {
  const InsightPopUpCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CardPopUp(
      imgText: "assets/img/insight.png",
      leadingText: "Insights",
      titleText: "Get your insights",
      subText:
          "If you are interested in investing, but has no idea where to start, If you are interested in investing, but has no idea where to start!",
      function: () {},
      buttonText: "View Insights",
    );
  }
}
