// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:la_vie/presentation/componentes/btns.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool isHover = false;
  bool isHover2 = false;
  bool isHover3 = false;
  bool isHover4 = false;
  bool isHover5 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 25.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Text(
              'La Vie',
              style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 270.0),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
              child: Row(
                children: <Widget>[
                  InkWell(
                      onHover: (value) {
                        setState(() {
                          isHover = value;
                        });
                      },
                      onTap: () {},
                      child: ItemAppBar(
                        isHover: isHover,
                        text: 'Home',
                        color: isHover ? Colors.green : Colors.black,
                      )),
                  SizedBox(width: 40.0),
                  InkWell(
                      onHover: (value) {
                        setState(() {
                          isHover2 = value;
                        });
                      },
                      onTap: () {},
                      child: ItemAppBar(
                        isHover: isHover2,
                        text: 'Shop',
                        color: isHover2 ? Colors.green : Colors.black,
                      )),
                  SizedBox(
                    width: 40.0,
                  ),
                  InkWell(
                      onHover: (value) {
                        setState(() {
                          isHover3 = value;
                        });
                      },
                      onTap: () {},
                      child: ItemAppBar(
                        isHover: isHover3,
                        text: 'Blog',
                        color: isHover3 ? Colors.green : Colors.black,
                      )),
                  SizedBox(width: 40.0),
                  InkWell(
                      onHover: (value) {
                        setState(() {
                          isHover4 = value;
                        });
                      },
                      onTap: () {},
                      child: ItemAppBar(
                        isHover: isHover4,
                        text: 'About',
                        color: isHover4 ? Colors.green : Colors.black,
                      )),
                  SizedBox(width: 40.0),
                  InkWell(
                      onHover: (value) {
                        setState(() {
                          isHover4 = value;
                        });
                      },
                      onTap: () {},
                      child: ItemAppBar(
                        isHover: isHover5,
                        text: 'Community',
                        color: isHover5 ? Colors.green : Colors.black,
                      )),
                ],
              ),
            ),
            Spacer(),
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_sharp)),
            IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 15, 0),
              child: SizedBox(
                height: 25.0,
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 50.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemAppBar extends StatelessWidget {
  const ItemAppBar(
      {Key? key, required this.isHover, required this.text, this.color})
      : super(key: key);

  final bool isHover;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          text,
          style: TextStyle(fontSize: 20.0, color: color),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          color: Colors.white,
          width: 80.0,
          height: isHover ? 4.0 : 0.0,
        )
      ],
    );
  }
}
