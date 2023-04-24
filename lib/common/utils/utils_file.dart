import 'dart:ffi';

import 'package:intl/intl.dart';

extension NumberOfReader on int{
String get separateByComma{
  final numberFormat=NumberFormat.decimalPattern();
  return numberFormat.format(this);
}
}