import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:la_vie/presentation/componentes/custom_appbar.dart';
import 'package:hexcolor/hexcolor.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

List<String> categories = [
  'All Product',
  'Plants',
  'Tools',
  'Seeds',
];

List<String> plants = [
  'All Plants',
  'Cactus',
  'Palms',
  'Indoor plants',
  'Herbs',
  'Ferns',
  'House Plants',
  'Trees',
];
List<bool> catIsChecked = [
  false,
  false,
  false,
  false,
  false,
  false,
];
List<bool> plantIsChecked = [
  false,
  false,
  false,
  false,
  false,
  false,
];

var searchController = TextEditingController();

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomAppBar(),
            SizedBox(
              height: screenSize.height / 8.5,
            ),
            const Text(
              'Shop',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: screenSize.height / 8.5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      FilterItem(
                          conatinername: 'categories',
                          containerlistCheck: catIsChecked,
                          containerlistName: categories),
                      FilterItem(
                          conatinername: 'Plants',
                          containerlistCheck: plantIsChecked,
                          containerlistName: plants),
                      FilterItem(
                          conatinername: 'Plants',
                          containerlistCheck: plantIsChecked,
                          containerlistName: plants),
                      FilterItem(
                          conatinername: 'Plants',
                          containerlistCheck: plantIsChecked,
                          containerlistName: plants),
                    ],
                  ),
                  SizedBox(
                    width: screenSize.width * 0.05,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            width: screenSize.width * 0.4,
                            height: 50,
                            color: Colors.grey[200],
                            child: TextFormField(
                              controller: searchController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: HexColor('FF#1ABC00'),
                                ),
                                label: Text('Search'),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: screenSize.width / 2,
                          height: 1000,
                          child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisSpacing: 18,
                                      mainAxisSpacing: 18,
                                      crossAxisCount: 2),
                              itemCount: 20,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Material(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    elevation: 20,
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
                                          Row(
                                            children: [
                                              Text(
                                                'Cactus Plant',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 120,
                                              ),
                                              Text(
                                                '300  EGP',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: HexColor('FF#1ABC00'),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              )
                                            ],
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
                                          SizedBox(
                                            height: 30,
                                          ),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              onPrimary: Colors.white,
                                              primary: HexColor('FF#1ABC00'),
                                              fixedSize: const Size(550, 40),
                                            ),
                                            onPressed: () {},
                                            child: const Text('Add To Cart'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: screenSize.width * 0.05,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      children: [
                        Text(
                          'Viewing',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '20',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'of',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '100',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'prodcut',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FilterItem extends StatefulWidget {
  const FilterItem(
      {Key? key,
      required this.conatinername,
      required this.containerlistCheck,
      required this.containerlistName})
      : super(key: key);
  final String conatinername;
  final List<bool> containerlistCheck;
  final List<String> containerlistName;
  @override
  State<FilterItem> createState() => _FilterItemState();
}

class _FilterItemState extends State<FilterItem> {
  @override
  Widget build(BuildContext context) {
    bool showitems = false;
    print(showitems);
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 230,
          height: 220,
          color: Colors.grey[200],
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.conatinername,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            showitems = !showitems;
                            print(showitems);
                          });
                        },
                        icon: Icon(showitems
                            ? Icons.keyboard_arrow_down_sharp
                            : Icons.keyboard_arrow_up_sharp)),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Checkbox(
                            value: widget.containerlistCheck[index],
                            onChanged: (bool? value) {
                              setState(() {
                                widget.containerlistCheck[index] = value!;
                              });
                            },
                            checkColor: HexColor('FF#1ABC00'),
                            activeColor: HexColor('FF#1ABC00'),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text(
                            widget.containerlistName[index],
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
