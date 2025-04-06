void main() {

  List<Map<String, dynamic>> data = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]}
  ];

  Map<String, double> result = {};

  for (var std in data) {
    String n = std['name'];
    List<int> s = List<int>.from(std['scores']);

    int sum = 0;
    for (var i = 0; i < s.length; i++) {
      sum = sum + s[i];
    }

    double avg = sum / s.length;
    result[n] = double.parse(avg.toStringAsFixed(2));
  }

  // Sorting manually
  List<MapEntry<String, double>> sortedList = result.entries.toList();

  sortedList.sort((a, b) {
    if (a.value > b.value) {
      return -1;
    } else if (a.value < b.value) {
      return 1;
    } else {
      return 0;
    }
  });

  Map<String, double> finalMap = {};
  for (var item in sortedList) {
    finalMap[item.key] = item.value;
  }

  print(finalMap);
}
