import 'package:flutter/material.dart';
import 'circle_img.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        foregroundColor: Colors.black,
        backgroundColor: Colors.yellow,
        title: Row(
          children: [
            Expanded(
                child: Container(
              alignment: Alignment.center,
              child: const Icon(Icons.chevron_left, size: 30),
            )),
            Expanded(
              flex: 20,
              child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                    "CREATE BURGER",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  )),
            )
          ],
        ),
      ),
      body: Appbody(),
    ));
  }
}
class Appbody extends StatefulWidget {
  Appbody({Key? key}) : super(key: key);

  @override
  State<Appbody> createState() => _AppbodyState();
}

class _AppbodyState extends State<Appbody> {
  final String topPos = "top";
  final String bottomPos = "top";
  double totalPrice = 1.00;
  String name = 'Onion';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    width: double.infinity,
                    alignment: Alignment.centerRight,
                    child: Text(
                      "\$$totalPrice",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ))
                ],
              )),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    child: CircleImage(40, "img/onion.jpeg", 2.06, "Onion", topPos),
                    margin: const EdgeInsets.only(right: 20),
                  ),
                  Container(
                    child: CircleImage(40, "img/tomatos.jpeg", 2.06, "Tomatos", topPos),
                    margin: const EdgeInsets.only(right: 20),
                  ),
                  Container(
                    child: CircleImage(40, "img/cucumber.jpeg", 2.06, "Tomatos", topPos),
                    margin: const EdgeInsets.only(right: 20),
                  ),
                  Container(
                    child: CircleImage(40, "img/eggplant.jpeg", 2.06, "Eggplant", topPos),
                    margin: const EdgeInsets.only(right: 20),
                  ),
                  Container(
                    child: CircleImage(40, "img/pumpkin.jpeg", 2.06, "Pumpkin", topPos),
                    margin: const EdgeInsets.only(right: 20),
                  ),
                  Container(
                    child: CircleImage(40, "img/carrots.webp", 2.06, "Carrots", topPos),
                    margin: const EdgeInsets.only(right: 20),
                  ),
                ],
              ),
          )
        ]
      )
      );
  }
}
