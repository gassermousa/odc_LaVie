import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:la_vie/presentation/constant/colors.dart';

Widget defaultButton(
        {required String text,
        double? radius,
        double width = double.infinity,
        required Function onpress,
        bool? isUpperCase = false}) =>
    Container(
      height: 50.0,
      width: width,
      decoration: BoxDecoration(
          color: defaultColor,
          borderRadius: BorderRadius.all(Radius.circular(radius ?? 0))),
      child: MaterialButton(
        onPressed: () {
          onpress();
        },
        child: Text(
          isUpperCase! ? text.toUpperCase() : text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );

Widget btnAppBarr({
  required String text,
  double? radius,
  required Function onpress,
}) =>
    Container(
      width: 150.0,
      height: 40.0,
      decoration: BoxDecoration(
          color: defaultColor,
          borderRadius: BorderRadius.all(Radius.circular(radius ?? 0))),
      child: MaterialButton(
        onPressed: () {
          onpress();
        },
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );

Widget customBtn({
  required width,
  required hight,
  required String text,
  double? radius,
  required Function onpress,
  IconData? icon,
}) =>
    Container(
      width: width,
      height: hight,
      decoration: BoxDecoration(
          color: defaultColor,
          borderRadius: BorderRadius.all(Radius.circular(radius ?? 0))),
      child: MaterialButton(
        onPressed: () {
          onpress();
        },
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );

Widget borderCustomBtn({
  required width,
  required hight,
  required String text,
  double? radius,
  required Function onpress,
}) =>
    Container(
      width: width,
      height: hight,
      decoration: BoxDecoration(
          border: Border.all(color: HexColor('#FFE3C5')),
          borderRadius: BorderRadius.all(Radius.circular(radius ?? 0))),
      child: MaterialButton(
        onPressed: () {
          onpress();
        },
        child: Text(
          text,
          style: TextStyle(color: defaultColor),
        ),
      ),
    );

Widget defaultTextBtn(
        {required String text,
        required Function onpress,
        bool? isUpperCase = false}) =>
    TextButton(
        onPressed: () {
          onpress();
        },
        child: Text(isUpperCase! ? text.toUpperCase() : text));
