import 'package:flutter/material.dart';
import 'package:foodapp/scr/widgets/CustomText.dart';

class BottomNavIcon extends StatelessWidget {
  final  String image;
   final  String name;

  const BottomNavIcon({Key? key, required this.image, required this.name}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.asset(
                      "images/$image",
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(height: 2),
                    CustomText(text:name),

                  ],
                ),
              );
  }
}