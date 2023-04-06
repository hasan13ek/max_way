import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:max_way/utils/app_colors.dart';

class MyUtils {
  static showSnackBar(BuildContext context, String? text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text ?? ""),
        backgroundColor: Colors.blue,
      ),
    );
  }

  static getMyToast({required String message}) => Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 2,
        backgroundColor: const Color(0xfff1B301),
        textColor: Colors.white,
        fontSize: 16.0,
      );
}

height(context) => MediaQuery.of(context).size.height;
width(context) => MediaQuery.of(context).size.width;
