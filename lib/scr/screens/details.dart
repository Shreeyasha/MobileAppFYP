import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/scr/models/products.dart';
import 'package:foodapp/scr/helpers/style.dart';
import 'package:foodapp/scr/screens/FoodOrderPage.dart';
import 'package:foodapp/scr/widgets/CustomText.dart';

class Details extends StatefulWidget {
  final Product product;

  Details({required this.product});
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Stack(
                children: [
                  Carousel(
                    images: [
                      AssetImage('images/${widget.product.image}'),
                      AssetImage('images/${widget.product.image}'),
                      AssetImage('images/${widget.product.image}'),
                    ],
                    dotBgColor: white,
                    dotColor: grey,
                    dotIncreasedColor: red,
                    dotIncreaseSize: 1.2,
                    autoplay: true,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: black,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(children: [
                                Image.asset(
                                  "images/shopping-bag.png",
                                  width: 30,
                                  height: 30,
                                ),
                              ]),
                            ),
                            Positioned(
                              right: 5,
                              bottom: 0,
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            color: grey,
                                            offset: Offset(2, 1),
                                            blurRadius: 3)
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 4, right: 4),
                                    child: CustomText(
                                      text: "22",
                                      color: red,
                                      size: 16,
                                      weight: FontWeight.bold,
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: 20,
                    bottom: 55,
                    child: Container(
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: grey[400]!,
                                offset: Offset(2, 1),
                                blurRadius: 3)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Icon(
                          Icons.favorite,
                          size: 22,
                          color: red,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            CustomText(
              text: widget.product.name,
              size: 26,
              weight: FontWeight.bold,
            ),
            CustomText(
              text: "\$" + widget.product.price.toString(),
              size: 20,
              color: red,
              weight: FontWeight.w600,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove,
                        size: 28,
                      )),
                ),
                GestureDetector(
                   onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => FoodOrderPage())),
                  child: Container(
                    decoration: BoxDecoration(
                      color: red,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(28, 12, 28, 12),
                      child: CustomText(
                        text: "Add to Cart",
                        color: white,
                        size: 24,
                        weight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                     onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => FoodOrderPage()),
                    );
                      },
                      icon: Icon(
                        Icons.add,
                        size: 28,
                      )),
                ),
              ],
            ),
            SizedBox(height:50),
            Container(child: Text("Receipe:" ,style:TextStyle(fontWeight:FontWeight.bold,fontSize: 24))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Lorem Ipsum is a Lorem Ipsum.Lorem Ipsum is a Lorem Ipsum.Lorem Ipsum is a Lorem Ipsum.Lorem Ipsum is a Lorem Ipsum.Lorem Ipsum is a Lorem Ipsum.Lorem Ipsum is a Lorem Ipsum.Lorem Ipsum is a Lorem Ipsum.Lorem Ipsum is a Lorem Ipsum."),
            )
            ,


          ],
        ),
      ),
    );
  }
}
