class Sale {
  String date;
  String condition;
  double price;
  Priority? priority;

  Sale(
      {required this.date,
      required this.condition,
      required this.price,
      this.priority});
}

enum Priority { first, second, third }
