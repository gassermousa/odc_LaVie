import 'package:flutter/material.dart';
import 'package:la_vie/presentation/constant/colors.dart';

Widget defaultFormFiled(
        {required TextEditingController controller,
        required TextInputType type,
        Function? onSubmit,
        Function? onChange,
        required String? Function(String?)? validate,
        String? lable,
        int? maxlines,
        IconData? prefixIcon,
        IconData? suffix,
        Function? suffixPressed,
        bool scureText = false,
        TextInputAction? action,
        Color? style}) =>
    TextFormField(
      maxLines: maxlines,
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: (s) {
        onSubmit!(s);
      },
      obscureText: scureText,
      validator: validate,
      textInputAction: action,
      decoration: InputDecoration(
        labelText: lable,
        suffix: GestureDetector(
          child: Icon(
            suffix,
            color: defaultColor,
          ),
          onTap: () {
            suffixPressed!();
          },
        ),

        prefixIcon: Icon(prefixIcon),
        // ignore: prefer_const_constructors
        border: OutlineInputBorder(),
      ),
      style: TextStyle(color: style),
    );
