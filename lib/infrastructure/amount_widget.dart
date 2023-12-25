import 'package:flutter/material.dart';

Widget formatMoney(String amount, String currency) {
  double money = double.parse(amount.replaceAll(',', ''));
  String prefix = money >= 0 ? '+$currency' : '-$currency';
  Color color = money >= 0 ? Colors.green : Colors.black;

  String formattedMoney = '$prefix${money.abs().toStringAsFixed(2)}';
  return Text(
    formattedMoney,
    style: TextStyle(
      color: color,
      fontSize: 13,
    ),
  );
}
