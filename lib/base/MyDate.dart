import 'package:intl/intl.dart';
class MyDate{
 static String formatDate(String date){
   var inputDate = DateFormat("yyyy-MM-ddThh:mm:ssZ");
   var outputDate = DateFormat("yyyy / MMM / dd / hh:mm a");
   return  outputDate.format(inputDate.parse(date));
  }
}