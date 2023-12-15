import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddQuestionCard extends StatelessWidget {
  final String title, icon;
  const AddQuestionCard({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 183,
      height: 121,
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          color: const Color(0xFFEEEEEE),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                icon,
                height: 42,
                width: 42,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                title,
                style: GoogleFonts.rubik(fontSize: 18),
              )
            ],
          )),
    );
  }
}
