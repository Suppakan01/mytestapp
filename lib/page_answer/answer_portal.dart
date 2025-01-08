import 'package:flutter/material.dart';
import 'package:mytestapp/page_answer/answer1.dart';
import 'package:mytestapp/page_answer/answer2.dart';
import 'package:mytestapp/page_answer/answer3.dart';
import 'package:mytestapp/page_answer/answer4.dart';

class AnswerPortal extends StatelessWidget {
  const AnswerPortal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "My Answer",
            style: TextStyle(
              color: Colors.limeAccent,
            ),
          ),
        ),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        color: Colors.lightGreen[50],
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildAnswerButton(context, 'Answer1', const Answer1()),
              const SizedBox(height: 20),
              buildAnswerButton(context, 'Answer2', const Answer2()),
              const SizedBox(height: 20),
              buildAnswerButton(context, 'Answer3', const Answer3()),
              const SizedBox(height: 20),
              buildAnswerButton(context, 'Answer4', const Answer4()),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildAnswerButton(BuildContext context, String label, Widget page) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.lightBlue,
        elevation: 2,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
      ),
      child: Text(label),
    );
  }
}
