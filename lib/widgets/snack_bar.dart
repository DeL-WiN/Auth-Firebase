import 'package:beomy_tech_auth/style.dart';
import 'package:flutter/material.dart';

class SnackBarService {
  static const errorColor = Colors.red;
  static final okColor = BC.yellow;

  static Future<void> showSnackBar(
      BuildContext context, String massage, bool error) async {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();

    final snackBar = SnackBar(
      content: Text(massage, style: BS.sb18.apply(color: error ? BC.white : BC.black),),
      backgroundColor: error ? errorColor : okColor,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
