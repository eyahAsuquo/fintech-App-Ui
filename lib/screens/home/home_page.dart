import 'package:fintech_ui/utils/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      appBar: AppBar(
        toolbarHeight: 150,
        automaticallyImplyLeading: false,
        backgroundColor: blueColor,
        elevation: 0,
        title: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              "Hello",
              style: GoogleFonts.inter(
                color: white,
                fontWeight: .bold,
                fontSize: 18,
              ),
            ),
            Text(
              "Your finances are looking good",
              style: GoogleFonts.inter(
                color: white,
                fontWeight: .bold,
                fontSize: 12,
              ),
            ),
          ],
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0x52002D52),
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_outlined, color: Colors.white),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: const Color(0x52002D52),
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_outlined, color: Colors.white),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Container(
                  width: double.infinity,
                  height: 350,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: const Color(0x52002D52),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search_outlined, color: Colors.white),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 80,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: const Color(0x52002D52),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search_outlined, color: Colors.white),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "My Budgets",
                  style: GoogleFonts.inter(color: white, fontWeight: .w500),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 80,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFF3A37FF),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search_outlined, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
