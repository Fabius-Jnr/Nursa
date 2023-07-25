class ReminderModel {
  final String patientName;
  final String drugName;

  final String bedNo;

  final String drugType;
  final String time;
  final String date;

  ReminderModel(
      {required this.patientName,
      required this.drugName,
      required this.bedNo,
      required this.drugType,
      required this.time,
      required this.date});

  ReminderModel.fromJson(Map<String, dynamic> json)
      : patientName = json['patientName'],
        drugName = json['drugName'],
        bedNo = json['bedNumber'],
        drugType = json['drugType'],
        time = json['time'],
        date = json['date'];

  toJson() {
    return {
      "patientName": patientName,
      "drugName": drugName,
      "bedNo": bedNo,
      "time": time,
      "drugType": drugType,
      "date": date,
    };
  }
}
