import 'package:flutter/material.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.color,
  });

  final String name;
  final String description;
  final int price;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            blurRadius: 1,
          )
        ],
        color: Colors.white,
      ),
      height: 120,
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            height: double.infinity,
            width: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    topLeft: Radius.circular(5))),
            child: Text(
              name,
              style: const TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(description),
                  Text("Price: $price"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
