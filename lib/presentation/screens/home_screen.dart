// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:la_vie/presentation/componentes/btns.dart';
import 'package:la_vie/presentation/componentes/formfield.dart';
import 'package:la_vie/presentation/componentes/widgets.dart';
import 'package:la_vie/presentation/constant/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var formkey = GlobalKey<FormState>();
    var titleController = TextEditingController();
    var descriptionController = TextEditingController();
    var photoController = TextEditingController();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 180.0),
                        child: SizedBox(
                            height: 600,
                            child: Image.asset('assets/images/tree.png')),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 120.0, 10, 0),
                        child: SizedBox(
                            height: 800,
                            child: Image.asset('assets/images/semi_circ.png')),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 500,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 180),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // ignore: prefer_const_constructors
                        Padding(
                          padding: const EdgeInsets.fromLTRB(350, 0, 10, 50),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 25.0,
                                child: Icon(Icons.question_mark,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Perfect way to plant in house',
                          style: TextStyle(
                              color: defaultColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        SizedBox(
                          width: 500.0,
                          child: Text(
                            'leaf, in botany, any usually flattened green outgrowth from the stem of a vascular plant. As the primary sites of photosynthesis, leaves manufacture food for plants, which in turn ultimately nourish and sustain all land animals. Botanically, leaves are an integral part of the stem system. They are attached by a continuous vascular system to the rest of the plant so that free exchange of nutrients, water, and end products of photosynthesis',
                            style: TextStyle(fontSize: 19),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        customBtn(
                            width: 120.0,
                            hight: 50.0,
                            text: 'Explore Now',
                            onpress: () {
                              //TODO:Create New Post
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return Center(
                                    child: Container(
                                      height: 680,
                                      width: 900,
                                      color: Colors.white,
                                      child: Scaffold(
                                        body: Form(
                                          key: formkey,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20.0),
                                            child: ListView(
                                              children: <Widget>[
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                    vertical: 10.0,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: <Widget>[
                                                      Text(
                                                        'Create a New Post',
                                                        style: TextStyle(
                                                            fontSize: 20.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                defaultColor),
                                                      ),
                                                      IconButton(
                                                          onPressed: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          icon:
                                                              Icon(Icons.close))
                                                    ],
                                                  ),
                                                ),
                                                Text(
                                                  'Title',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  height: 10.0,
                                                ),
                                                defaultFormFiled(
                                                  controller: titleController,
                                                  type: TextInputType.name,
                                                  action: TextInputAction.next,
                                                  validate: (String? value) {
                                                    if (value == null ||
                                                        value.trim().isEmpty) {
                                                      return 'Please Enter Title';
                                                    }
                                                    return null;
                                                  },
                                                ),
                                                SizedBox(
                                                  height: 30.0,
                                                ),
                                                Text(
                                                  'Description',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  height: 10.0,
                                                ),
                                                defaultFormFiled(
                                                  maxlines: 150 ~/ 20,
                                                  controller:
                                                      descriptionController,
                                                  type: TextInputType.name,
                                                  action: TextInputAction.next,
                                                  validate: (String? value) {
                                                    if (value == null ||
                                                        value.trim().isEmpty) {
                                                      return 'Please Enter Description';
                                                    }
                                                    return null;
                                                  },
                                                ),
                                                SizedBox(
                                                  height: 30.0,
                                                ),
                                                Text(
                                                  'Update photo ',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  height: 10.0,
                                                ),
                                                Stack(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  children: [
                                                    defaultFormFiled(
                                                      controller:
                                                          photoController,
                                                      type: TextInputType.name,
                                                      action:
                                                          TextInputAction.next,
                                                      validate:
                                                          (String? value) {
                                                        if (value == null ||
                                                            value
                                                                .trim()
                                                                .isEmpty) {
                                                          return 'Please Enter photo';
                                                        }
                                                        return null;
                                                      },
                                                    ),
                                                    customBtn(
                                                        radius: 5,
                                                        width: 120,
                                                        hight: 60,
                                                        text: 'update',
                                                        onpress: () {})
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 50.0,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    customBtn(
                                                        radius: 5,
                                                        width: 120,
                                                        hight: 60,
                                                        text: 'cancel',
                                                        onpress: () {}),
                                                    SizedBox(
                                                      width: 30.0,
                                                    ),
                                                    customBtn(
                                                        radius: 5,
                                                        width: 120,
                                                        hight: 60,
                                                        text: 'Post',
                                                        onpress: () {})
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            radius: 20),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                width: double.infinity,
                height: 60,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          MyTitle(title: 'Popular____\nCategories'),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 350,
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(
                dragDevices: {
                  PointerDeviceKind.touch,
                  PointerDeviceKind.mouse,
                },
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 100),
                child: ListView.separated(
                    physics: AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CategoriesWidget(
                          imagePath: 'assets/images/image 64.png',
                          name: 'tools');
                    },
                    separatorBuilder: (context, index) => SizedBox(
                          width: 60.0,
                        ),
                    itemCount: 15),
              ),
            ),
          ),
          SizedBox(height: 100.0),
          MyTitle(title: 'Best seller___'),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 450,
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(
                dragDevices: {
                  PointerDeviceKind.touch,
                  PointerDeviceKind.mouse,
                },
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 100),
                child: ListView.separated(
                    physics: AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(top: index % 2 != 0 ? 60 : 0),
                        child: BestSeller(
                          imagePath: 'assets/images/image 75.png',
                          name: 'SPIDER PLANT',
                          price: '190 EG',
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                          width: 60.0,
                        ),
                    itemCount: 15),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          MyTitle(title: 'Blogs___'),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(
            height: 450,
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(
                dragDevices: {
                  PointerDeviceKind.touch,
                  PointerDeviceKind.mouse,
                },
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 100),
                child: ListView.separated(
                    physics: AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return BlogsWidget(
                        timeAgo: '2',
                        imagePath: 'assets/images/test.png',
                        name: '5 Simple Tips treat plant',
                        description:
                            'leaf, in botany, any usually flattened green outgrowth from the stem of   ',
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                          width: 60.0,
                        ),
                    itemCount: 15),
              ),
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          MyTitle(title: 'About us____'),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: SizedBox(
                  width: 400.0,
                  child: Text(
                    'Welcome to La Vie, your number one source for planting. Were dedicated to giving you the very best of plants, with a focus on dependability, customer service and uniqueness.Founded in 2020, La Vie has come a long way from its beginnings in a  home office our passion for helping people and give them some advices about how to plant and take care of plants. We now serve customers all over Egypt, and are thrilled to be a part of the eco-friendly wing ',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                width: 500,
              ),
              Stack(
                alignment: Alignment.topLeft,
                children: <Widget>[
                  Container(
                    height: 280,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.green, width: 3),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      height: 280,
                      width: 330,
                      child: Image.asset(
                        'assets/images/about.png',
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 100.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  SizedBox(
                    child: Image.asset('assets/images/Rectangle (2).png'),
                  ),
                  Positioned(
                    left: 100,
                    child: SizedBox(
                      child: Image.asset('assets/images/Rectangle.png'),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 300,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 98, 0),
                      child: MyTitle(title: 'Mobile Application _____'),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(46, 40, 0, 0),
                      child: SizedBox(
                        width: 400,
                        child: Text(
                          'You can install La Vie mobile application and enjoy with new featurs, earn more points and get discounts Also you can scan QR codes in your plants’ pots so that you can get discount on everything in the website up to 70%',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 96, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          customBtn(
                              width: 120.0,
                              hight: 50.0,
                              text: 'Play Store',
                              onpress: () {},
                              radius: 20),
                          SizedBox(
                            width: 20,
                          ),
                          customBtn(
                              width: 120.0,
                              hight: 50.0,
                              text: 'App Store',
                              onpress: () {},
                              radius: 20),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class MyTitle extends StatelessWidget {
  const MyTitle({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}
