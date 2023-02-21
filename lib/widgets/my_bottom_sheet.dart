import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:toggle_switch/toggle_switch.dart';

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({Key? key}) : super(key: key);

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  final List cupCounts = [1, 2, 3, 4, 5, 6];
  int selectedCupCount = 1;
  final List cupSizes = ['S', 'M', 'L', 'XL'];
  String selectedCupSize = 'S';

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(30.0),
      children: [
        Align(
          alignment: Alignment.topRight,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.close),
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Temperature',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0,
                    color: Colors.brown,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ToggleSwitch(
                  minWidth: 90.0,
                  cornerRadius: 20.0,
                  activeBgColors: [
                    [Colors.brown[800]!],
                    [Colors.brown[800]!]
                  ],
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey.withOpacity(0.5),
                  inactiveFgColor: Colors.grey,
                  initialLabelIndex: 1,
                  totalSwitches: 2,
                  labels: const ['Hot', 'Cold'],
                  radiusStyle: true,
                  onToggle: (index) {},
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Quantity',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0,
                    color: Colors.brown,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    const Text(
                      '2',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                        color: Colors.brown,
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 30.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Text(
                  'Select Cup',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0,
                    color: Colors.brown,
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                DropdownButton(
                  value: selectedCupCount,
                  items: cupCounts
                      .map(
                        (item) => DropdownMenuItem(
                          value: item,
                          child: Text(
                            item.toString(),
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (Object? value) {
                    setState(() {
                      selectedCupCount = int.parse(value.toString());
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  'Select Size',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0,
                    color: Colors.brown,
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                DropdownButton(
                  value: selectedCupSize,
                  items: cupSizes
                      .map(
                        (item) => DropdownMenuItem(
                          value: item,
                          child: Text(
                            item.toString(),
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (Object? value) {
                    setState(() {
                      selectedCupSize = value.toString();
                    });
                  },
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 30.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: const [
                Icon(
                  FontAwesome5Solid.cube,
                  color: Colors.brown,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Sugar',
                  style: TextStyle(
                    color: Colors.brown,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Text(
                  '3 Cubes',
                  style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 30.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: const [
                Icon(
                  FontAwesome5Solid.cubes,
                  color: Colors.brown,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Ice',
                  style: TextStyle(
                    color: Colors.brown,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Text(
                  '5 Cubes',
                  style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 30.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: const [
                Icon(
                  FontAwesome5Solid.cube,
                  color: Colors.brown,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Cream',
                  style: TextStyle(
                    color: Colors.brown,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 25.0,
                ),
                const Text(
                  '  No  ',
                  style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0),
                ),
                const SizedBox(
                  width: 25.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 50.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: const[
                 Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                  ),
                ),
                SizedBox(height: 2.0,),
                Text(
                  '\$9,50',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 30.0,
            ),
            Container(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: const Center(
                child: Text(
                  'Place Order',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
