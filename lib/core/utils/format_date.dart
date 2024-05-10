import 'package:intl/intl.dart';

String formatDateBydMMYYYY(DateTime dateTime) {
  return DateFormat("dd MMM, yyyy").format(dateTime);
}
