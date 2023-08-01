import 'package:flutter/material.dart';

class MedicalPuzzlesPage extends StatefulWidget {
  const MedicalPuzzlesPage({super.key});

  @override
  _MedicalPuzzlesPageState createState() => _MedicalPuzzlesPageState();
}

class _MedicalPuzzlesPageState extends State<MedicalPuzzlesPage> {
  List<bool> showAnswer = List.generate(20, (index) => false);

  List<String> medicalPuzzles = [
    "What organ produces insulin?",
    "What is the medical term for high blood pressure?",
    "What is the largest organ in the human body?",
    "What is the main function of the respiratory system?",
    "Which bone is also known as the collarbone?",
    "What is the medical term for the kneecap?",
    "What does the acronym CPR stand for?",
    "Which vitamin is also known as ascorbic acid?",
    "What is the medical term for a heart attack?",
    "Which part of the brain is responsible for memory?",
    "What is the pigment responsible for skin color?",
    "What is the medical term for a nosebleed?",
    "Which gland in the neck produces hormones that regulate metabolism?",
    "What is the medical term for inflammation of the appendix?",
    "Which gas is essential for respiration?",
    "What is the medical term for the thigh bone?",
    "What is the medical term for a hunchback?",
    "Which part of the eye controls the amount of light that enters?",
    "What is the medical term for a bruise?",
    "What is the medical term for inflammation of the liver?",
  ];

  List<String> medicalAnswers = [
    "Pancreas",
    "Hypertension",
    "Skin",
    "Breathing",
    "Clavicle",
    "Patella",
    "Cardiopulmonary resuscitation",
    "Vitamin C",
    "Myocardial infarction",
    "Hippocampus",
    "Melanin",
    "Epistaxis",
    "Thyroid",
    "Appendicitis",
    "Oxygen",
    "Femur",
    "Kyphosis",
    "Iris",
    "Contusion",
    "Hepatitis",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Medical Puzzles"),
      ),
      body: ListView.builder(
        itemCount: medicalPuzzles.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              medicalPuzzles[index],
              style: const TextStyle(fontSize: 16),
            ),
            trailing: ElevatedButton(
              onPressed: () {
                setState(() {
                  showAnswer[index] = true;
                });
              },
              child: const Text("Show Answer"),
            ),
            subtitle: showAnswer[index]
                ? Text(
                    medicalAnswers[index],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : null,
          );
        },
      ),
    );
  }
}
