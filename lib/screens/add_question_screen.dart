import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_test/models/add_question_card_model.dart';
import 'package:ui_test/widgets/add_question_card.dart';

List<AddQuestionCardModel> questionCardItemList = [
  AddQuestionCardModel('Multiple Choice', 'assets/images/GitFork-r.png'),
  AddQuestionCardModel('True or False', 'assets/images/PlusMinus-r.png'),
  AddQuestionCardModel('Puzzle', 'assets/images/DiamondsFour-r.png'),
  AddQuestionCardModel('Photo Choice', 'assets/images/Camera-r.png'),
  AddQuestionCardModel('Checkbox', 'assets/images/CheckSquare-r.png'),
  AddQuestionCardModel('Open ended', 'assets/images/SlidersHorizontal-r.png'),
  AddQuestionCardModel('Poll', 'assets/images/ChartBar-r.png'),
  AddQuestionCardModel(
      'Fill-in-the-Blank', 'assets/images/TextAlignCenter-r.png'),
  AddQuestionCardModel('Flash Card', 'assets/images/Cards-r.png'),
];

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
            itemCount: questionCardItemList.length,
            itemBuilder: (context, index) {
              final cardItem = questionCardItemList[index];
              return AddQuestionCard(
                  title: cardItem.title, icon: cardItem.icon);
            }),
      ),
    );
  }
}
