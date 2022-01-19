import 'dart:io';

void main() {
  
  print('Write your email');
  var email = stdin.readLineSync()!;
  
  print('Write your site');
  var site = stdin.readLineSync()!;
  
  print('Write date');
  var date = stdin.readLineSync()!;
  
  print('Write your phone number');
  var phone = stdin.readLineSync()!;

  var someString = new Validator(email, site, date, phone);
  
  print(someString.isEmail);
  print(someString.isDomain);
  print(someString.isDate);
  print(someString.isPhone);
}

class Validator {
  String email;
  String domain;
  String date;
  String phone;

  bool get isEmail => email.split('@').last == 'gmail.com' ? true : false;

  bool get isDomain => domain.split('.').last == 'com' ? true : false;
  
  var days = RegExp(r"[0-3][0-9]");
  var months = RegExp(r"[0-1][0-9]");
  bool get isDate => date.split('/').first == days && date.split('/')[1] == months ? true : false;
  
  var megacomCodes = RegExp(r"55[0-9] | 99[0-9]");
  bool get isPhone => phone.substring(1, 4) == megacomCodes ? true : false;

  Validator(this.email , this.domain, this.date, this.phone);
}
