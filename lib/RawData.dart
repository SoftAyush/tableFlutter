class ReportItem {
  final String week;
  final String name;
  final int count;
  final String date;

  ReportItem({
    required this.week,
    required this.name,
    required this.count,
    required this.date,
  });

  // // Factory method to create a ReportItem from a Map
  factory ReportItem.fromMap(Map<String, dynamic> map) {
    return ReportItem(
      week: map['week'],
      name: map['name'],
      count: map['count'],
      date: map['date'],
    );
  }
}


