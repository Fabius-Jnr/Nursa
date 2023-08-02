import 'package:flutter/material.dart';
import 'package:nursa/alarm/constants/styles.dart';
import 'package:nursa/wards/reminder_model.dart';
import 'widgets.dart';

class ReminderCardWidget extends StatefulWidget {
   ReminderCardWidget({
    Key? key,
    required this.reminder,
    required this.toggleReminderStatus,
  }) : super(key: key);

  final ReminderModel reminder;
  final Function(bool) toggleReminderStatus;

  @override
  State<ReminderCardWidget> createState() => _ReminderCardWidgetState();
}

class _ReminderCardWidgetState extends State<ReminderCardWidget> {
  bool _switchValue = true;

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
                    widget.reminder.time,
                    style: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Switch(
                    value: _switchValue,
                    onChanged: (value) {  
                      setState(() {
                         _switchValue = !_switchValue;
                         widget.toggleReminderStatus(_switchValue);
                      });
                    },
                  ),
                ],
              ),
              const Divider(thickness: 4),
              Row(
                children: [
                  GeneralInfoWidget(
                    firstTitle: "Patient Name",
                    firstDescription: widget.reminder.patientName,
                    secondTitle: "Bed Number",
                    secondDescription: widget.reminder.bedNo,
                  ),
                  const Spacer(),
                  GeneralInfoWidget(
                    firstTitle: "Name of drug",
                    firstDescription: widget.reminder.drugName,
                    secondTitle: "Drug Type",
                    secondDescription: widget.reminder.drugType,
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
