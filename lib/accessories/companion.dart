import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';



class NurseCompanionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nurse Companion',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: NurseCompanionHomePage(),
    );
  }
}

class NurseCompanionHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nurse Companion'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Page 1 - Patient Care Responsibilities'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => NurseCompanionPage(
                    title: 'Patient Care Responsibilities - Page 1',
                    content: '''
                    # Nurse Companion - Page 1

                    ## Patient Care Responsibilities
        
                    ### 1. Monitoring Vital Signs
        
                    - **Temperature:** Measure patient's body temperature regularly and record it.
                    - **Pulse Rate:** Check the patient's pulse rate and note any irregularities.
                    - **Blood Pressure:** Monitor blood pressure at regular intervals.
                    - **Respiration Rate:** Count the patient's breaths per minute.
        
                    ### 2. Administering Medications
        
                    - Follow the doctor's prescription for administering medications.
                    - Double-check patient details and medication dosage before administration.
                    - Observe the patient for any adverse reactions after medication.
        
                    ### 3. Assisting with Personal Care
        
                    - Help patients with activities of daily living, such as bathing and dressing.
                    - Maintain patient's privacy and dignity during personal care.
                    - Ensure cleanliness and hygiene of the patient's environment.
        
                    ### 4. Monitoring Symptoms and Progress
        
                    - Observe and document any changes in the patient's condition.
                    - Communicate any concerns to the medical team promptly.
                    - Keep track of the patient's progress and recovery.
        
                    ### 5. Providing Emotional Support
        
                    - Offer comfort and emotional support to patients and their families.
                    - Listen to their concerns and provide reassurance.
                    - Be empathetic and compassionate in all interactions.
        
                    ### Remember
        
                    Patient care is a critical responsibility that requires attention to detail and empathy. Always follow medical protocols and provide the best care possible for your patients.
                    ''',
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Page 2 - Patient Care Responsibilities'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => NurseCompanionPage(
                    title: 'Patient Care Responsibilities - Page 2',
                    content: '''
                    # Nurse Companion - Page 2

                    ## Patient Care Responsibilities
        
                    ### 6. Wound Care
        
                    - Clean and dress wounds according to medical guidelines.
                    - Monitor wound healing progress and report any concerns.
                    - Educate patients on wound care for home management.
        
                    ### 7. Catheter Care
        
                    - Provide care for patients with urinary catheters.
                    - Ensure catheters are clean and functioning properly.
                    - Prevent catheter-related infections by following sterile procedures.
        
                    ### 8. Pain Management
        
                    - Assess and manage patients' pain levels.
                    - Administer pain medications as prescribed.
                    - Implement non-pharmacological pain management techniques.
        
                    ### 9. Fall Prevention
        
                    - Identify patients at risk of falling and implement preventive measures.
                    - Keep patient's environment free from hazards that could cause falls.
                    - Educate patients on fall prevention strategies.
        
                    ### 10. Nutrition and Hydration
        
                    - Ensure patients receive proper nutrition and hydration.
                    - Monitor dietary restrictions and preferences.
                    - Collaborate with nutritionists for specialized diets.
        
                    ### Remember
        
                    Providing holistic care is essential in nursing. Always prioritize patients' safety, comfort, and well-being throughout their healthcare journey.
                    ''',
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: Text('Page 3 - Patient Care Responsibilities'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => NurseCompanionPage(
                    title: 'Patient Care Responsibilities - Page 3',
                    content: '''
                    # Nurse Companion - Page 3

                    ## Patient Care Responsibilities
        
                    ### 11. Infection Control
        
                    - Implement proper infection prevention and control measures.
                    - Follow hand hygiene protocols and wear appropriate PPE.
                    - Isolate contagious patients as needed.
        
                    ### 12. Patient Education
        
                    - Educate patients and their families about medical conditions and treatments.
                    - Provide instructions for at-home care and medication management.
                    - Address questions and concerns with patience and clarity.
        
                    ### 13. Medication Management
        
                    - Ensure patients receive the right medications at the correct doses and times.
                    - Monitor medication side effects and interactions.
                    - Educate patients on the importance of medication compliance.
        
                    ### 14. End-of-Life Care
        
                    - Provide compassionate care for patients nearing the end of life.
                    - Offer emotional support to patients and their families.
                    - Ensure patients' comfort and dignity during their final moments.
        
                    ### 15. Emergency Response
        
                    - Stay calm and act quickly in emergency situations.
                    - Perform CPR and basic life support as needed.
                    - Collaborate with the healthcare team during emergencies.
        
                    ### Remember
        
                    Nursing requires continuous learning and adaptability. Be open to growth and new challenges in your journey as a nurse.
                    ''',
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class NurseCompanionPage extends StatelessWidget {
  final String title;
  final String content;

  const NurseCompanionPage({required this.title, required this.content, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: MarkdownBody(
          data: content,
          styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context))
              .copyWith(textScaleFactor: 1.1),
        ),
      ),
    );
  }
}
