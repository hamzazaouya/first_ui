import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final double imageRadius;
  final String? imagePath;
  final String? pos;
  final String? name;
  final double? price;

  CircleImage(
      this.imageRadius, this.imagePath, this.price, this.name, this.pos);
  @override
  Widget build(BuildContext context) {
    //if (pos == "bottom") {
      return Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey,
            radius: imageRadius,
            child: CircleAvatar(
              radius: imageRadius - 2,
              backgroundImage: AssetImage("$imagePath"),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: Text(name!, 
              style: const TextStyle( 
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      );
    }
}
