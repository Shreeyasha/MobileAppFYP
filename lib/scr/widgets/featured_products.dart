import 'package:flutter/material.dart';
import 'package:foodapp/scr/models/products.dart';
import 'package:foodapp/scr/widgets/CustomText.dart';
import 'package:foodapp/scr/widgets/common.dart';

List<Product> productsList = [
  Product(
      name: "Cereals",
      price: 5.99,
      rating: 4.2,
      vendor: "goodfood",
      wishList: true,
      image: "1.jpg"),

      Product(
      name: "Taccos",
      price: 5.99,
      rating: 12.99,
      vendor: "goodfood",
      wishList: false,
      image: "5.jpg"),

      Product(
      name: "Taccos",
      price: 5.99,
      rating: 12.99,
      vendor: "goodfood",
      wishList: true,
      image: "2.jpg"),

      Product(
      name: "Taccos",
      price: 5.99,
      rating: 12.99,
      vendor: "goodfood",
      wishList: false,
      image: "3.jpg"),
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productsList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: EdgeInsets.fromLTRB(12, 14, 16, 12),
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
                            text: productsList[index].name!,
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
                              child: productsList[index].wishList!
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
            );
          }),
    );
  }
}
