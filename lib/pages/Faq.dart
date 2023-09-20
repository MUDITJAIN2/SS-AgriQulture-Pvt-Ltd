import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Faq extends StatefulWidget {
  const Faq({Key? key}) : super(key: key);

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobile1(),
      desktop: mobile1(), // Use the same mobile layout for desktop
    );
  }

  Widget mobile1() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white, Colors.white], // Adjust the colors as needed
        ),
      ),
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0), // Added padding for spacing
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FAQItem(
              question: "What is Flutter?",
              answer: "Flutter is an open-source UI software development toolkit...",
            ),
            SizedBox(height: 16.0), // Added spacing between items
            FAQItem(
              question: "How do I get started with Flutter?",
              answer: "To get started with Flutter, you need to install Flutter...",
            ),
             SizedBox(height: 16.0), // Added spacing between items
            FAQItem(
              question: "How do I get started with Flutter?",
              answer: "To get started with Flutter, you need to install Flutter...",
            ),
             SizedBox(height: 16.0), // Added spacing between items
            FAQItem(
              question: "How do I get started with Flutter?",
              answer: "To get started with Flutter, you need to install Flutter...",
            ),
             SizedBox(height: 16.0), // Added spacing between items
            FAQItem(
              question: "How do I get started with Flutter?",
              answer: "To get started with Flutter, you need to install Flutter...",
            ),
          ],
        ),
      ),
    );
  }
}

class FAQItem extends StatelessWidget {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2, // Added a slight elevation
      margin: EdgeInsets.all(0), // Removed margin for minimalism
      child: ExpansionTile(
        title: Text(
          question,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16, // Adjusted font size for questions
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              answer,
              style: TextStyle(
                fontSize: 14,
                
                 // Adjusted font size for answers
              ),
            ),
          ),
        ],
      ),
    );
  }
}