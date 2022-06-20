import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

extension ToastUtils on String {
  void get toast => Fluttertoast.showToast(
      msg: this,
      textColor: Colors.white,
      backgroundColor: Colors.blue,
      toastLength: Toast.LENGTH_SHORT);
}
