import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider_demo/view/screen_2.dart';

class ProviderController extends ChangeNotifier {

  int number = 0;
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  void reset() {
    firstName.text = '';
    lastName.text = '';
    number = 0;
    notifyListeners();
  }

  void addNumber() {
    number++;
    notifyListeners();
  }

  void subNumber() {
    if (number > 0) {
      number--;
    }
    notifyListeners();
  }

  validate({@required BuildContext? context}) {
    // ignore: unnecessary_null_comparison
    if (firstName.text == '' || firstName.text == null) {
      Fluttertoast.showToast(
          msg: "Please enter first name",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else if (lastName.text == '' || lastName.text == null) {
      Fluttertoast.showToast(
          msg: "Please enter last name",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else {
      Navigator.push(
          context!, MaterialPageRoute(builder: (context) => const Screen2()));
    }
  }
}
