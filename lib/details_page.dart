import 'package:flutter/material.dart';
import 'package:flutter_coffee_ui/widgets/my_bottom_sheet.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 20.0,
                color: const Color(0xFFF3B2B7),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: (MediaQuery.of(context).size.height / 2) - 20.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2 + 25.0,
                left: 15.0,
                child: SizedBox(
                  height: (MediaQuery.of(context).size.height / 2) - 50.0,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    children: [
                      const Text(
                        'Preparation time',
                        style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF726B68),
                        ),
                      ),
                      const SizedBox(height: 7.0),
                      const Text(
                        '5min',
                        style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          color: Color(0xFFC6C4C4),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.only(right: 35.0),
                        child: Container(
                          height: 0.5,
                          color: const Color(0xFFC6C4C4),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        'Ingredients',
                        style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF726B68),
                        ),
                      ),
                      const SizedBox(height: 7.0),
                      SizedBox(
                        height: 110.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            buildIngredientItem(
                              'Water',
                              const Icon(Feather.droplet,
                                  size: 10.0, color: Colors.white),
                              const Color(0xFF6FC5DA),
                            ),
                            buildIngredientItem(
                              'Brewed Espresso',
                              const Icon(Feather.target,
                                  size: 18.0, color: Colors.white),
                              const Color(0xFF615955),
                            ),
                            buildIngredientItem(
                              'Sugar',
                              const Icon(Feather.box,
                                  size: 18.0, color: Colors.white),
                              const Color(0xFFF39595),
                            ),
                            buildIngredientItem(
                              'Toffee Nut Syrup',
                              const Icon(MaterialCommunityIcons.peanut_outline,
                                  size: 18.0, color: Colors.white),
                              const Color(0xFF8FC28A),
                            ),
                            buildIngredientItem(
                              'Natural Flavors',
                              const Icon(MaterialCommunityIcons.leaf_maple,
                                  size: 18.0, color: Colors.white),
                              const Color(0xFF3B8079),
                            ),
                            buildIngredientItem(
                              'Vanilla Syrup',
                              const Icon(
                                  MaterialCommunityIcons.flower_tulip_outline,
                                  size: 18.0,
                                  color: Colors.white),
                              const Color(0xFFF8B870),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 7.0),
                      Padding(
                        padding: const EdgeInsets.only(right: 35.0),
                        child: Container(
                          height: 2,
                          color: const Color(0xFFC6C4C4),
                        ),
                      ),
                      const SizedBox(height: 7.0),
                      const Text(
                        'Nutrition Information',
                        style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF726B68),
                        ),
                      ),
                      const SizedBox(height: 7.0),
                      Row(children: const [
                        Text(
                          'Calories',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              color: Color(0xFFD4D3D2)),
                        ),
                        SizedBox(width: 15.0),
                        Text(
                          '250',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF716966)),
                        ),
                      ]),
                      const SizedBox(height: 7.0),
                      Row(children: const [
                        Text(
                          'Proteins',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              color: Color(0xFFD4D3D2)),
                        ),
                        SizedBox(width: 15.0),
                        Text(
                          '10gm',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF716966)),
                        ),
                      ]),
                      const SizedBox(height: 7.0),
                      Row(children: const [
                        Text(
                          'Caffeine',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              color: Color(0xFFD4D3D2)),
                        ),
                        SizedBox(width: 15.0),
                        Text(
                          '150mg',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF716966)),
                        ),
                      ]),
                      const SizedBox(height: 7.0),
                      Padding(
                        padding: const EdgeInsets.only(right: 35.0),
                        child: Container(
                          height: 2,
                          color: const Color(0xFFC6C4C4),
                        ),
                      ),
                      const SizedBox(height: 7.0),
                      Padding(
                        padding: const EdgeInsets.only(right: 35.0),
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              backgroundColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(25.0),
                                ),
                              ),
                              context: context,
                              builder: (context) {
                                return const MyBottomSheet();
                              },
                            );
                          },
                          child: Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF473D3A),
                              borderRadius: BorderRadius.circular(35.0),
                            ),
                            child: const Center(
                              child: Text(
                                'Order Now',
                                style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 75.0,
                top: 150,
                child: Container(
                  height: 400.0,
                  width: 400.0,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/pinkcup.png'),
                    fit: BoxFit.cover,
                  )),
                ),
              ),
              Positioned(
                top: 25.0,
                left: 15.0,
                child: SizedBox(
                  height: 300.0,
                  width: 250.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Flexible(
                            child: Text(
                              'Caramel Macchiato',
                              style: TextStyle(
                                  fontFamily: 'varela',
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            width: 15.0,
                          ),
                          Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: const Icon(
                              Icons.favorite,
                              size: 18.0,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      const SizedBox(
                        width: 170.0,
                        child: Text(
                          'Freshly steamed milk with vanilla-flavored syrup is marked with espresso and topped with caramel drizzle for an oh-so-sweet finish.',
                          style: TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 13.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Row(
                        children: [
                          Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: const Color(0xFF473D3A),
                            ),
                            child: const Center(
                              child: Text(
                                '4.5/5',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'nunito',
                                  fontSize: 13.0,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15.0),
                          Column(
                            children: [
                              Stack(
                                children: [
                                  const SizedBox(
                                    height: 35.0,
                                    width: 80.0,
                                  ),
                                  Positioned(
                                    left: 40.0,
                                    child: Container(
                                      height: 35.0,
                                      width: 35.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(17.5),
                                        border: Border.all(
                                          color: const Color(0xFFF3B2B7),
                                          style: BorderStyle.solid,
                                          width: 1.0,
                                        ),
                                        image: const DecorationImage(
                                          image: AssetImage('assets/man.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 20.0,
                                    child: Container(
                                      height: 35.0,
                                      width: 35.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(17.5),
                                        border: Border.all(
                                          color: const Color(0xFFF3B2B7),
                                          style: BorderStyle.solid,
                                          width: 1.0,
                                        ),
                                        image: const DecorationImage(
                                          image: AssetImage('assets/man.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    child: Container(
                                      height: 35.0,
                                      width: 35.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(17.5),
                                        border: Border.all(
                                          color: const Color(0xFFF3B2B7),
                                          style: BorderStyle.solid,
                                          width: 1.0,
                                        ),
                                        image: const DecorationImage(
                                          image: AssetImage('assets/man.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 3.0),
                              const Text(
                                '+ 27 more',
                                style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  buildIngredientItem(String name, Icon iconName, Color bgColor) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Column(
        children: [
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: iconName,
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          SizedBox(
            width: 60.0,
            child: Center(
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'nunito',
                  fontSize: 12.0,
                  color: Color(0xFFC2C0C0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
