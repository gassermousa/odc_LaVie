// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:la_vie/presentation/constant/colors.dart';
import 'package:hexcolor/hexcolor.dart';

class CategoriesWidget extends StatelessWidget {
  CategoriesWidget({Key? key, required this.imagePath, required this.name})
      : super(
          key: key,
        );
  final String imagePath;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200,
          height: 300,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Image.asset(imagePath),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          name,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class BestSeller extends StatelessWidget {
  const BestSeller(
      {Key? key,
      required this.imagePath,
      required this.name,
      required this.price})
      : super(key: key);
  final String imagePath;
  final String name;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 200,
          height: 200,
          child: Image.asset(imagePath),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          name,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          price,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class BlogsWidget extends StatelessWidget {
  const BlogsWidget({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.description,
    required this.timeAgo,
  }) : super(key: key);
  final String imagePath;
  final String name;
  final String description;
  final String timeAgo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 340,
      child: Card(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Image.asset(imagePath, fit: BoxFit.cover),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '${timeAgo} days ago',
                style: TextStyle(color: defaultColor, fontSize: 15),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                description,
                style: TextStyle(fontSize: 15),
              ),
            ]),
      ),
    );
  }
}

class DefaultOrLoginWith extends StatelessWidget {
  const DefaultOrLoginWith({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/images/google.png',
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.facebook,
            size: 35,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}

class DefaultTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const DefaultTextButton({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered)) {
            return HexColor('FF#1ABC00');
          }
          return Colors.black;
        }),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}

class DefaultFormField extends StatelessWidget {
  final String header;
  final TextEditingController controller;
  final int maxLines;
  final TextInputType textInputType;

  const DefaultFormField({
    required this.textInputType,
    required this.header,
    required this.maxLines,
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header,
          style: TextStyle(
            color: HexColor('FF#6F6F6F'),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          controller: controller,
          maxLines: maxLines,
          keyboardType: textInputType,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            contentPadding: const EdgeInsets.all(8),
          ),
        ),
      ],
    );
  }
}
