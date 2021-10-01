import 'package:intl/intl.dart';

class CustomNumberFormats {
  static NumberFormat moneyFormat() {
    NumberFormat formatter = NumberFormat.simpleCurrency(locale: 'pt_BR');
    return formatter;
  }
}
