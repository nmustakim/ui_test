import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ui_test/widgets/add_question_card.dart';

import '../utils/lists.dart';


class AddQuestionScreen extends StatelessWidget {
  const AddQuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAFAFA),
        foregroundColor: Colors.black,
        centerTitle: true,
        toolbarHeight: 75,
        elevation: 0,
        leading: SizedBox(
          height: 32,
          width: 32,
          child: Image.asset(
            'assets/images/X-r.png',
          ),
        ),
        title: Text(
          'Add Question',
          style: GoogleFonts.rubik(fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 183 / 121,
                crossAxisSpacing: 6,
                mainAxisSpacing: 6),
            itemCount: Lists().questionCardItemList.length,
            itemBuilder: (context, index) {
              final cardItem = Lists().questionCardItemList[index];
              return AddQuestionCard(
                  title: cardItem.title, icon: cardItem.icon);
            }),
      ),
    );
  }
}
