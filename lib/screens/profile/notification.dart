import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool _isTransactionToggled = false;
  bool _isInsightToggled = false;
  bool _isSortToggled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        centerTitle: true,
        toolbarHeight: 90,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: Column(
          children: [
            Column(
              spacing: 30,
              children: [
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      "Transaction alert",
                      style: GoogleFonts.inter(
                        color: deepBlue,
                        fontSize: 14,
                        fontWeight: .bold,
                      ),
                    ),
                    Switch(
                      value: _isTransactionToggled,
                      onChanged: (value) {
                        setState(() {
                          _isTransactionToggled = value;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      "Insight alert",
                      style: GoogleFonts.inter(
                        color: deepBlue,
                        fontSize: 14,
                        fontWeight: .bold,
                      ),
                    ),
                    Switch(
                      value: _isInsightToggled,
                      onChanged: (value) {
                        setState(() {
                          _isInsightToggled = value;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(
                      "Sort Transaction alert",
                      style: GoogleFonts.inter(
                        color: deepBlue,
                        fontSize: 14,
                        fontWeight: .bold,
                      ),
                    ),
                    Switch(
                      value: _isSortToggled,
                      onChanged: (value) {
                        setState(() {
                          _isSortToggled = value;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
