import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:la_vie/appcubits/cubit/blogs_cubit/blogs_cubit.dart';
import 'package:la_vie/data/models/plants/fetch.dart';
import 'package:la_vie/presentation/componentes/custom_appbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FetchPlantsModel? model;

    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<BlogsCubit, BlogsState>(
        listener: (context, state) {
          if (state is FetchPlantSuccessState) {
            model = state.fetchPlantsModelModel!;
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomAppBar(),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Blogs',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Wrap(
                      alignment: WrapAlignment.center,
                      children: List.generate(
                          9,
                          (index) => Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Material(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  elevation: 20,
                                  child: SizedBox(
                                    width: 280,
                                    height: 300,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            'assets/images/test.png',
                                            width: double.infinity,
                                            height: 160,
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            '2 days ago',
                                            style: TextStyle(
                                              color: HexColor('FF#1ABC00'),
                                              fontSize: 10,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            model!.data[index].name,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          const Text(
                                            'leaf, in botany, any usually flattened green outgrowth from the stem of  ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11,
                                              color: Colors.grey,
                                            ),
                                            maxLines: 2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ))),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
