import 'package:flutter/material.dart';
import 'package:flutter_listview/widgets/item_product.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Product Listing'),
        ),
        body: ListView(
          children: const [
            ItemProduct(
              name: "iPhone",
              description: "iPhone is the stylist phone ever",
              price: 1000,
              color: Colors.pink,
            ),
            ItemProduct(
              name: "Pixel",
              description: "Pixel is the most featureful phone ever",
              price: 800,
              color: Colors.green,
            ),
            ItemProduct(
              name: "Laptop",
              description: "Laptop is most productive development tool",
              price: 2000,
              color: Colors.blue,
            ),
            ItemProduct(
              name: "Tablet",
              description: "Tablet is the most useful device ever for meeting",
              price: 1500,
              color: Colors.orange,
            ),
            ItemProduct(
              name: "Pendrive",
              description: "Pending is say hello",
              price: 100,
              color: Colors.purple,
            ),
            ItemProduct(
              name: "Macbook",
              description: "Macbook is product of Apple",
              price: 1500,
              color: Colors.red,
            ),
            ItemProduct(
              name: "Xiaome",
              description: "Xiaomi is a mobilephone of China",
              price: 100,
              color: Colors.brown,
            ),
          ],
        ));
  }
}
