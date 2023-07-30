import 'package:flutter/material.dart';
import 'package:nursa/alarm/constants/styles.dart';
import 'package:nursa/wards/reminder_model.dart';
import 'widgets.dart';

class ReminderCardWidget extends StatelessWidget {
  const ReminderCardWidget({
    Key? key,
    required this.reminder,
    required this.isReminderOn,
    required this.toggleReminderStatus,
  }) : super(key: key);

  final ReminderModel reminder;
  final bool isReminderOn;
  final Function(bool) toggleReminderStatus;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 400,
        decoration: kBoxDecoration,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    reminder.time,
                    style: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Switch(
                    value: isReminderOn,
                    onChanged: (value) {
                      toggleReminderStatus(!isReminderOn);
                    },
                  ),
                ],
              ),
              const Divider(thickness: 4),
              Row(
                children: [
                  GeneralInfoWidget(
                    firstTitle: "Patient Name",
                    firstDescription: reminder.patientName,
                    secondTitle: "Bed Number",
                    secondDescription: reminder.bedNo,
                  ),
                  const Spacer(),
                  GeneralInfoWidget(
                    firstTitle: "Name of drug",
                    firstDescription: reminder.drugName,
                    secondTitle: "Drug Type",
                    secondDescription: reminder.drugType,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
