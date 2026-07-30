import 'package:intl/intl.dart';

//ver los numero como tiktok
class HumanFormats {
  //Static es conveniente porque no se tiene que instanciar para llamar uno de sus metodos (funciones)
  static String humanRedableNumber(double number) {
    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);
    return formatterNumber;
  }
}
