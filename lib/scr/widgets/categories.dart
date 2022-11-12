import 'package:flutter/material.dart';
import 'package:foodapp/scr/models/category.dart';
import 'package:foodapp/scr/widgets/CustomText.dart';
import 'package:foodapp/scr/helpers/style.dart';

List<Category> categoriesList = [
  Category(name: "Salad", image: "salad.png"),
  Category(name: "Steak", image: "steak.png"),
  Category(name: "Fast Food", image: "sandwich.png"),
  Category(name: "Desserts", image: "ice-cream.png"),
  Category(name: "Sea Food", image: "fish.png"),
  Category(name: "Beer", image: "pint.png"),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoriesList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(color: white, boxShadow: [
                      BoxShadow(
                        color: red[50]!,
                        offset: Offset(4, 6),
                        blurRadius: 20,
                      )
                    ]),
                    child: Padding(
                      padding: EdgeInsets.all(4),
                      child: Image.asset(
                        "images/${categoriesList[index].image}",
                        width: 50,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomText(
                    text: categoriesList[index].name,
                    size: 14,
                    color: black,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
