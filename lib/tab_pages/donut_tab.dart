import 'package:donut_ui/widgets/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  List donutsOnSale = [
    ["Ice Cream", "36", Colors.blue, "lib/images/images/icecream_donut.png"],
    [
      "Chocolate Donut",
      "45",
      Colors.red,
      "lib/images/images/chocolate_donut.png"
    ],
    ["Grape Donut", "84", Colors.purple, "lib/images/images/grape_donut.png"],
    [
      "Strawberry Donut",
      "95",
      Colors.brown,
      "lib/images/images/strawberry_donut.png"
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: donutsOnSale.length,
        padding: const EdgeInsets.all(12),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1/1.5),
        itemBuilder: (context, index) {
          return DonutTile(
              donutFlavor: donutsOnSale[index][0],
              donutPrice: donutsOnSale[index][1],
              donutColor: donutsOnSale[index][2],
              imageName: donutsOnSale[index][3]
          );
        });
  }
}
