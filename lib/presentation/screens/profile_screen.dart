// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:la_vie/presentation/componentes/btns.dart';
import 'package:la_vie/presentation/componentes/formfield.dart';
import 'package:la_vie/presentation/constant/colors.dart';

import '../componentes/custom_appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var formkey = GlobalKey<FormState>();
    var firstnameController = TextEditingController();
    var lastnameController = TextEditingController();
    var emailController = TextEditingController();
    var addressController = TextEditingController();
    var photoController = TextEditingController();
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size(double.infinity, 1000),
            child: CustomAppBar(),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
                  child: Center(
                    child: Text(
                      'My Profile',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: 600,
                  height: 50.0,
                  child: AppBar(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.white,
                    bottom: TabBar(
                      unselectedLabelColor: Colors.grey,
                      labelColor: defaultColor,
                      indicatorColor: defaultColor,
                      tabs: [
                        Tab(
                          text: 'Personal Information ',
                        ),
                        Tab(
                          text: 'Profile picture ',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 30,
                      width: 50,
                      child: CircleAvatar(
                        backgroundColor: defaultColor,
                        radius: 50.0,
                        child: Icon(Icons.stars),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'You have 30 points',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Expanded(
                    child: TabBarView(
                  children: [
                    ListView(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'First Name',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  defaultFormFiled(
                                    controller: firstnameController,
                                    type: TextInputType.name,
                                    action: TextInputAction.next,
                                    validate: (String? value) {
                                      if (value == null ||
                                          value.trim().isEmpty) {
                                        return 'Please Enter Firstname';
                                      }
                                      return null;
                                    },
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Last Name',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  defaultFormFiled(
                                    controller: lastnameController,
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
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Email',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  defaultFormFiled(
                                    controller: emailController,
                                    type: TextInputType.emailAddress,
                                    action: TextInputAction.next,
                                    validate: (String? value) {
                                      if (value == null ||
                                          value.trim().isEmpty) {
                                        return 'Please Enter Email';
                                      }
                                      return null;
                                    },
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Address',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  defaultFormFiled(
                                    controller: addressController,
                                    type: TextInputType.streetAddress,
                                    action: TextInputAction.next,
                                    validate: (String? value) {
                                      if (value == null ||
                                          value.trim().isEmpty) {
                                        return 'Please Enter Address';
                                      }
                                      return null;
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 280,
                            width: 260,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.add),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text('Add Photo'),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              defaultFormFiled(
                                controller: photoController,
                                type: TextInputType.name,
                                action: TextInputAction.next,
                                validate: (String? value) {
                                  if (value == null || value.trim().isEmpty) {
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
                        ],
                      ),
                    )
                    /////////////////
                  ],
                )),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                  child: Center(
                    child: customBtn(
                        radius: 5,
                        width: 120,
                        hight: 40,
                        text: 'save',
                        onpress: () {}),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
