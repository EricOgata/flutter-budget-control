import 'package:intl/intl.dart';

class Transaction {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  
  Transaction({
    required this.id,
    required this.title,
    required this.amount,
    required this.date,
  });

  String getCurrency() {
    NumberFormat formatter = NumberFormat.simpleCurrency(
      locale: 'pt_BR'
    );
    return formatter.format(this.amount);
  }

  String getFormatedDate() {
    return DateFormat(DateFormat.YEAR_MONTH_DAY).format(this.date);
  }
}
