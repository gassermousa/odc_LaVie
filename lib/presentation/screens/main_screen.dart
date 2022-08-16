// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:la_vie/presentation/componentes/custom_appbar.dart';
import 'package:la_vie/presentation/screens/home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 1000),
        child: CustomAppBar(),
      ),
      body: HomeScreen(),
    );
  }
}
