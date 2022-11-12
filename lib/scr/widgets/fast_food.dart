import 'package:flutter/material.dart';
import 'package:foodapp/scr/helpers/screen_navigation.dart';
import 'package:foodapp/scr/models/products.dart';
import 'package:foodapp/scr/screens/details.dart';
import 'package:foodapp/scr/widgets/CustomText.dart';
import 'package:foodapp/scr/helpers/style.dart';

List<Product> productsList = [
  Product(
      name: "Burger",
      price: 5.99,
      rating: 4.2,
      vendor: "goodfood",
      wishList: true,
      image: "burger.png"),
  Product(
      name: "Pizza",
      price: 7.99,
      rating: 5.0,
      vendor: "goodfood",
      wishList: false,
      image: "pizza.png"),
  Product(
      name: "Fried Chicken",
      price: 5.59,
      rating: 2.9,
      vendor: "goodfood",
      wishList: true,
      image: "fried_chicken.png"),
  Product(
      name: "Samosa",
      price: 15.99,
      rating: 4.9,
      vendor: "goodfood",
      wishList: false,
      image: "samosa.png"),
];

class Fast_Food extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: productsList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: EdgeInsets.fromLTRB(12, 14, 16, 12),
              child: GestureDetector(
                onTap: () {
                  changeScreen(_, Details(product: productsList[index]));
                },
                child: Container(
                  height: 220,
                  width: 210,
                  decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: red[50]!,
                        offset: Offset(15, 5),
                        blurRadius: 30,
                      )
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/${productsList[index].image}",
                        height: 140,
                        width: 140,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(
                              text: productsList[index].name,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: white,
                                boxShadow: [
                                  BoxShadow(
                                    color: grey[300]!,
                                    offset: Offset(1, 1),
                                    blurRadius: 4,
                                  )
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: productsList[index].wishList
                                    ? Icon(
                                        Icons.favorite,
                                        color: red,
                                        size: 15,
                                      )
                                    : Icon(
                                        Icons.favorite_border,
                                        color: red,
                                        size: 15,
                                      ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: CustomText(
                                  text: productsList[index].rating.toString(),
                                  color: grey,
                                  size: 14,
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Icon(
                                Icons.star,
                                color: red,
                                size: 16,
                              ),
                              Icon(
                                Icons.star,
                                color: red,
                                size: 16,
                              ),
                              Icon(
                                Icons.star,
                                color: red,
                                size: 16,
                              ),
                              Icon(
                                Icons.star,
                                color: red,
                                size: 16,
                              ),
                              Icon(
                                Icons.star,
                                color: grey,
                                size: 16,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: CustomText(
                              text: "\$${productsList[index].price}",
                              weight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
