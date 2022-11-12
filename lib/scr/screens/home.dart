import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/scr/widgets/bottom_navigationIcons.dart';
import 'package:foodapp/scr/widgets/categories.dart';
import 'package:foodapp/scr/helpers/style.dart';
import 'package:foodapp/scr/widgets/CustomText.dart';
import 'package:foodapp/scr/widgets/desserts.dart';
import 'package:foodapp/scr/widgets/fast_food.dart';
import 'package:foodapp/scr/widgets/featured_products.dart';
import 'package:foodapp/scr/widgets/salads.dart';
import 'package:foodapp/scr/widgets/small_floating_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  
  bool isloggedin = false;
 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      drawer: Drawer(
        child: Container(
          color:red[400]!,
          child: ListView(
            children: [
              DrawerHeader(child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: white,
                    radius: 43,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: red,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment:MainAxisAlignment.center ,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text("Welcome Shreeyasha"),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 25,
                        child: OutlinedButton(
                        onPressed:(){},
                        child: Text("Login", style: TextStyle(color:black, fontWeight: FontWeight.bold),
                        ),
                        style: ButtonStyle(
                          
                        ),
                      
                        
                        ),
                      
                       
                        )
                        
                   
          
                    ],
                  )
                ],
              ),)
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: CustomText(
                    text: "What would you like to eat?",
                    size: 18,
                  ),
                ),
                Stack(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.notifications_none),
                      onPressed: () {},
                    ),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: grey[300]!,
                      offset: Offset(1, 1),
                      blurRadius: 4,
                    )
                  ],
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.search,
                    color: red,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Search your favourite food",
                      border: InputBorder.none,
                    ),
                  ),
                  trailing: Icon(
                    Icons.filter_list,
                    color: red,
                  ),
                ),
              ),
              
            ),
            SizedBox(
              height: 5,
            ),
            Categories(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: "Featured Food",
                size: 20,
                color: grey,
              ),
            ),
            Featured(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: "Most Popular",
                size: 20,
                color: grey,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset("images/food.jpg")),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SmallButton(Icons.favorite),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            width: 50,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Icon(Icons.star,
                                      color: Colors.yellow[900], size: 20),
                                ),
                                Text("4.5"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.black.withOpacity(0.7),
                                Colors.black.withOpacity(0.6),
                                Colors.black.withOpacity(0.6),
                                Colors.black.withOpacity(0.4),
                                Colors.black.withOpacity(0.1),
                                Colors.black.withOpacity(0.05),
                                Colors.black.withOpacity(0.025),
                              ],
                            )),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
                              child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Pancakes \n",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white)),
                                  TextSpan(
                                      text: "by: ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.white)),
                                  TextSpan(
                                      text: "Pizza Hut ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white)),
                                ], style: TextStyle(color: black)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "\$12.99 \n",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300,
                                          color: white)),
                                ], style: TextStyle(color: black)),
                              ),
                            ),
                          
                          ],
                        )),
                  ),

                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: "Fast Food",
                size: 20,
                color: grey,
              ),
            ),
            Fast_Food(),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: "Salad",
                size: 20,
                color: grey,
              ),
            ),
            Salad(),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: "Desserts",
                size: 20,
                color: grey,
              ),
            ),
            Desserts(),
          ],
        ),
      ),


      

      bottomNavigationBar: Container(
        height: 76,
        color: white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              BottomNavIcon(
                image: "home.png",
                name: "Home",
                onTap: () {},
              ),
              BottomNavIcon(
                  image: "shopping-bag.png", name: "Cart", onTap: () {}),
              BottomNavIcon(
                image: "avatar.png",
                name: "Account",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
