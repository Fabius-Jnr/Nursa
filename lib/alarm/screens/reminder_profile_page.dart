// import 'package:alarm/alarm.dart';
// import 'package:flutter/material.dart';
// import 'package:nursa/alarm/constants/styles.dart';
// import 'package:nursa/alarm/controllers/controllers.dart';
// import 'package:nursa/alarm/widgets/reminder_card_widget.dart';

// class AlarmApp extends StatefulWidget {
//   const AlarmApp({super.key});

//   @override
//   State<AlarmApp> createState() => _AlarmAppState();
// }

// class _AlarmAppState extends State<AlarmApp> {
//   bool light0 = true;

//   bool light1 = true;

//   final MaterialStateProperty<Icon?> thumbIcon =
//       MaterialStateProperty.resolveWith<Icon?>(
//     (Set<MaterialState> states) {
//       if (states.contains(MaterialState.selected)) {
//         return const Icon(Icons.check);
//       }
//       return const Icon(Icons.close);
//     },
//   );

//   DateTime selectedDate = DateTime.now();
//   TimeOfDay selectedTime = TimeOfDay.now();
//   DateTime dateTime = DateTime.now();

//   late void Function(bool)? value;
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Alarm App"),
//         centerTitle: true,
//       ),
//       body:  ReminderCardWidget(),
//       floatingActionButton: FloatingActionButton(
//           child: const Icon(Icons.alarm_add),
//           onPressed: () async {
//             showModalBottomSheet<void>(
//               isScrollControlled: true,
//               context: context,
//               builder: (BuildContext context) {
//                 return SingleChildScrollView(
//                   child: Container(
//                     height: MediaQuery.sizeOf(context).height * 0.9,
//                     color: Colors.white,
//                     child: Form(
//                       key: _formKey,
//                       child: Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: Column(
//                           children: <Widget>[
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 TextButton(
//                                   onPressed: () {},
//                                   child: const Text(
//                                     "Cancel",
//                                     style: TextStyle(fontSize: 24),
//                                   ),
//                                 ),
//                                 TextButton(
//                                   onPressed: () async {
//                                     if (_formKey.currentState!.validate()) {
//                                       var dateTime =
//                                           DateTime(2023, 6, 21, 18, 35);
//                                       final alarmSettings = AlarmSettings(
//                                         id: 42,
//                                         dateTime: dateTime,
//                                         assetAudioPath:
//                                             'assets/audio/alarm.mp3',
//                                         loopAudio: true,
//                                         vibrate: true,
//                                         fadeDuration: 3.0,
//                                         notificationTitle: 'This is the title',
//                                         notificationBody: 'This is the body',
//                                         enableNotificationOnKill: true,
//                                       );
//                                       await Alarm.set(
//                                           alarmSettings: alarmSettings);
//                                     } else {}
//                                   },
//                                   child: const Text(
//                                     "Save",
//                                     style: TextStyle(fontSize: 24),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             TextFormFieldWidget(
//                                 readOnly: false,
//                                 controller: drugFieldController,
//                                 text: "drug name",
//                                 labelText: "Type drug name here",
//                                 hintText: "E.g: Paracetamol",
//                                 icon: Icons.medication),
//                             const SizedBox(height: 15),
//                             TextFormFieldWidget(
//                                 readOnly: false,
//                                 controller: patientNameController,
//                                 text: "patient name",
//                                 labelText: "Type patient name here",
//                                 hintText: "e.g: Jane Doe",
//                                 icon: Icons.person),
//                             const SizedBox(
//                               height: 15,
//                             ),
//                             TextFormFieldWidget(
//                                 readOnly: false,
//                                 controller: bedNumberController,
//                                 text: "bed number",
//                                 labelText: "Bed number",
//                                 hintText: "e.g: 10",
//                                 icon: Icons.bed),
//                             const SizedBox(
//                               height: 15,
//                             ),
//                             TextFormFieldWidget(
//                                 readOnly: false,
//                                 controller: drugTypeController,
//                                 text: "drug type",
//                                 labelText: "Drug Type",
//                                 hintText: "e.g: Contraceptive",
//                                 icon: Icons.medication_liquid),
//                             const SizedBox(
//                               height: 15,
//                             ),
//                             TextFormFieldWidget(
//                               readOnly: true,
//                               labelText: "Select Date",
//                               onTap: () async {
//                                 final DateTime? pickedDate =
//                                     await showDatePicker(
//                                   context: context,
//                                   initialDate: selectedDate,
//                                   firstDate: DateTime(2000),
//                                   lastDate: DateTime(2050),
//                                 );

//                                 if (pickedDate != null &&
//                                     pickedDate != selectedDate) {
//                                   setState(() {
//                                     selectedDate = pickedDate;
//                                     dateController.text = selectedDate
//                                         .toLocal()
//                                         .toString()
//                                         .split(' ')[0];
//                                   });
//                                 }
//                               },
//                               controller: dateController,
//                               icon: Icons.calendar_view_day_rounded,
//                             ),
//                             const SizedBox(height: 15),
//                             TextFormFieldWidget(
//                               readOnly: true,
//                               labelText: "Select Time",
//                               onTap: () async {
//                                 final TimeOfDay? pickedTime =
//                                     await showTimePicker(
//                                   context: context,
//                                   initialTime: selectedTime,
//                                 );

//                                 if (pickedTime != null &&
//                                     pickedTime != selectedTime) {
//                                   setState(() {
//                                     selectedTime = pickedTime;
//                                     timeController.text =
//                                         selectedTime.format(context);
//                                   });
//                                 }
//                               },
//                               controller: timeController,
//                               icon: Icons.timer,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             );
//           }),
//     );
//   }
// }

// class TextFormFieldWidget extends StatelessWidget {
//   const TextFormFieldWidget({
//     super.key,
//     required this.controller,
//     required this.icon,
//     this.onTap,
//     this.text,
//     this.labelText,
//     this.hintText,
//     required this.readOnly,
//   });

//   final TextEditingController controller;
//   final String? text;
//   final String? labelText;
//   final String? hintText;
//   final IconData icon;
//   final void Function()? onTap;
//   final bool readOnly;

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       readOnly: readOnly,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return "Please enter a valid $text";
//         } else {
//           return null;
//         }
//       },
//       onTap: onTap,
//       controller: controller,
//       decoration: InputDecoration(
//         contentPadding: const EdgeInsets.all(8.0),
//         prefixIcon: Icon(icon),
//         labelText: labelText,
//         hintText: hintText,
//         border: kOutlineInputBorder,
//       ),
//     );
//   }
// }
