class ReminderModel {
  final int id;
  final String patientName;
  final String drugName;
  final String bedNo;
  final String drugType;
  final String time;
  final String date;
  bool isReminderOn;

  ReminderModel({
    required this.id,
    required this.patientName,
    required this.drugName,
    required this.bedNo,
    required this.drugType,
    required this.time,
    required this.date,
    required this.isReminderOn,
  });

  ReminderModel.fromJson(Map<String, dynamic> json)
      : 
      id = json['id'],
      patientName = json['patientName'] ?? '',
        drugName = json['drugName'] ?? '',
        bedNo = json['bedNo'] ?? '',
        drugType = json['drugType'] ?? '',
        time = json['time'] ?? '',
        date = json['date'] ?? '',
        isReminderOn = true;

  ReminderModel copyWith({bool? isReminderOn}) {
    return ReminderModel(
      id: id,
      patientName: patientName,
      drugName: drugName,
      bedNo: bedNo,
      drugType: drugType,
      time: time,
      date: date,
      isReminderOn: isReminderOn ?? this.isReminderOn,
    );
  }

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
