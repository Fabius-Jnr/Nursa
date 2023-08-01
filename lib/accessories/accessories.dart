import 'package:flutter/material.dart';

class NurseEthicsPage extends StatelessWidget {
  const NurseEthicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nurse Work Ethics"),
      ),
      body: Container(
        color: Colors.grey[300], // Background color
        padding: const EdgeInsets.all(16.0),
        child: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "1. Compassion",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Nurses should show compassion and empathy towards their patients. "
                "They should understand and be sensitive to the physical and emotional needs of patients "
                "and provide care with kindness and understanding.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                "2. Integrity",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Nurses should always demonstrate integrity and honesty in their work. "
                "They should adhere to ethical standards and maintain patient confidentiality. "
                "Integrity also involves being accountable for their actions and taking responsibility for mistakes.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                "3. Professionalism",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Nurses should maintain a high level of professionalism in their interactions with patients, "
                "colleagues, and other healthcare professionals. This includes dressing appropriately, "
                "communicating effectively, and acting in a respectful and courteous manner.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                "4. Teamwork",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Nurses should collaborate and work effectively as part of a healthcare team. "
                "They should be willing to support and assist their colleagues and share knowledge "
                "for the benefit of patients and the overall quality of care.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                "5. Continuous Learning",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Nurses should be committed to continuous learning and professional development. "
                "They should stay updated with the latest advancements in healthcare practices "
                "and participate in training programs to enhance their skills and knowledge.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                "6. Empowerment",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Nurses should empower patients by providing them with information about their health conditions, "
                "treatment options, and self-care techniques. Empowering patients helps them take an active role "
                "in their own healthcare decisions and improves patient outcomes.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                "7. Patience",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Nursing requires patience, especially when dealing with patients who may be anxious, "
                "confused, or in pain. Nurses should take the time to listen to their patients and "
                "provide gentle and understanding care.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                "8. Attention to Detail",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Nurses need to be highly attentive to details in patient care. "
                "They should accurately record patient information, administer medications with precision, "
                "and observe any changes in the patient's condition.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                "9. Emotional Stability",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Nursing can be emotionally demanding, and nurses should be emotionally stable "
                "to cope with the challenges they may encounter. Emotional stability helps nurses "
                "provide consistent and compassionate care to patients.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                "10. Time Management",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Nurses should be skilled at managing their time efficiently to provide timely and effective care. "
                "They must prioritize tasks, plan their shifts well, and be prepared for unexpected situations.",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: NurseEthicsPage(),
  ));
}
