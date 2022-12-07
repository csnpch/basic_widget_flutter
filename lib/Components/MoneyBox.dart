// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/number_symbols_data.dart';

class MoneyBox extends StatelessWidget {

  String ?title;
  double ?price;
  Color ?color;
  double ?boxHeight;

  MoneyBox(this.title, this.price, this.color, this.boxHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 24, right: 24),
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
        height: boxHeight,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$title",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                letterSpacing: 2,
              )
            ),
            Text(
                "${NumberFormat("#,###.##").format(price)}\$",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                )
            ),
          ],
        )
    );
  }

}