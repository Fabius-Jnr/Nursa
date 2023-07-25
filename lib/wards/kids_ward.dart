import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:nursa/alarm/controllers/controllers.dart';
import 'package:nursa/alarm/screens/reminder_repository.dart';
import 'package:nursa/alarm/widgets/reminder_card_widget.dart';
import 'package:nursa/wards/reminder_model.dart';

import '../alarm/widgets/textformfield_widget.dart';

class KidsWard extends StatefulWidget {
  const KidsWard({super.key});

  @override
  State<KidsWard> createState() => _KidsWardState();
}

class _KidsWardState extends State<KidsWard> {
  bool light0 = true;
  bool light1 = true;

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  final _formKey = GlobalKey<FormState>();

  Future<void> saveReminderToFirestore(ReminderModel reminder) async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    var user = auth.currentUser!;
    var userID = user.uid;
    try {
      await FirebaseFirestore.instance
          .collection('Users')
          .doc(userID)
          .collection('Reminders')
          .add(reminder.toJson())
          .whenComplete(() => Get.snackbar("Success", "Reminder added"));
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kids Ward"),
        centerTitle: true,
      ),
      body: FutureBuilder<List<ReminderModel>>(
        future: fetchRemindersFromFirestore(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // While the data is being fetched, show a loading indicator.
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            // If an error occurs while fetching, show an error message.
            return Text('Error fetching reminders: ${snapshot.error}');
          } else {
            // If the data is fetched successfully, build your UI with the data.
            List<ReminderModel> reminders = snapshot.data ?? [];

            return ListView.builder(
              itemCount: reminders.length,
              itemBuilder: (context, index) {
                return ReminderCardWidget(
                  reminder: reminders[index],
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.alarm_add),
          onPressed: () async {
            showModalBottomSheet<void>(
              isScrollControlled: true,
              context: context,
              builder: (BuildContext context) {
                return SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.9,
                    color: Colors.white,
                    child: Form(
                      key: _formKey,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Cancel",
                                    style: TextStyle(fontSize: 24),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () async {
                                    if (_formKey.currentState!.validate()) {
                                      DateTime selectedDateTime = DateTime(
                                        selectedDate.year,
                                        selectedDate.month,
                                        selectedDate.day,
                                        selectedTime.hour,
                                        selectedTime.minute,
                                      );

                                      // Schedule the alarm/notification.
                                      scheduleAlarm(
                                        selectedDateTime,
                                        'Alarm Title',
                                        'This is the alarm notification body.',
                                      );

                                      final ReminderModel reminderModel =
                                          ReminderModel(
                                        patientName: patientNameController.text,
                                        drugName: drugFieldController.text,
                                        bedNo: bedNumberController.text,
                                        drugType: drugTypeController.text,
                                        time: timeController.text,
                                        date: dateController.text,
                                      );

                                      await saveReminderToFirestore(
                                          reminderModel);
                                      patientNameController.clear();
                                      drugFieldController.clear();
                                      bedNumberController.clear();
                                      drugTypeController.clear();
                                      timeController.clear();
                                      dateController.clear();
                                    }
                                  },
                                  child: const Text(
                                    "Save",
                                    style: TextStyle(fontSize: 24),
                                  ),
                                ),
                              ],
                            ),
                            TextFormFieldWidget(
                              readOnly: false,
                              controller: drugFieldController,
                              text: "drug name",
                              labelText: "Type drug name here",
                              hintText: "E.g: Paracetamol",
                              icon: Icons.medication,
                            ),
                            const SizedBox(height: 15),
                            TextFormFieldWidget(
                              readOnly: false,
                              controller: patientNameController,
                              text: "patient name",
                              labelText: "Type patient name here",
                              hintText: "e.g: Jane Doe",
                              icon: Icons.person,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            TextFormFieldWidget(
                              readOnly: false,
                              controller: bedNumberController,
                              text: "bed number",
                              labelText: "Bed number",
                              hintText: "e.g: 10",
                              icon: Icons.bed,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            TextFormFieldWidget(
                              readOnly: false,
                              controller: drugTypeController,
                              text: "drug type",
                              labelText: "Drug Type",
                              hintText: "e.g: Contraceptive",
                              icon: Icons.medication_liquid,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            TextFormFieldWidget(
                              readOnly: true,
                              labelText: "Select Date",
                              onTap: () async {
                                final DateTime? pickedDate =
                                    await showDatePicker(
                                  context: context,
                                  initialDate: selectedDate,
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2050),
                                );

                                if (pickedDate != null &&
                                    pickedDate != selectedDate) {
                                  setState(() {
                                    selectedDate = pickedDate;
                                    dateController.text = selectedDate
                                        .toLocal()
                                        .toString()
                                        .split(' ')[0];
                                  });
                                }
                              },
                              controller: dateController,
                              icon: Icons.calendar_view_day_rounded,
                            ),
                            const SizedBox(height: 15),
                            TextFormFieldWidget(
                              readOnly: true,
                              labelText: "Select Time",
                              onTap: () async {
                                final TimeOfDay? pickedTime =
                                    await showTimePicker(
                                  context: context,
                                  initialTime: selectedTime,
                                );

                                if (pickedTime != null &&
                                    pickedTime != selectedTime) {
                                  setState(() {
                                    selectedTime = pickedTime;
                                    timeController.text =
                                        selectedTime.format(context);
                                  });
                                }
                              },
                              controller: timeController,
                              icon: Icons.timer,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
Future<void> scheduleAlarm(DateTime dateTime, String title, String body) async {
  var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
    'channel_id',
    'channel_name',
    importance: Importance.max,
    priority: Priority.high,
    playSound: true,
  );
  var platformChannelSpecifics = NotificationDetails(
    android: androidPlatformChannelSpecifics,
  );

  await flutterLocalNotificationsPlugin.schedule(
    0,
    title,
    body,
    dateTime,
    platformChannelSpecifics,
    androidAllowWhileIdle: true,
  );
}
