import 'package:flutter/material.dart';

class Product {
  final String name, image, desription, price;
  final int number;
  final Color color;
  Product(
      {required this.name,
      required this.image,
      required this.desription,
      required this.price,
      required this.number,
      required this.color});
}

List<Product> products = [
  Product(
    name: 'Mac Book',
    image: 'lib/assets/0x0.jpg',
    desription: '8GB RAM, 256 ROM, cpu: icore7',
    price: '4,000,000',
    number: 5,
    color: Colors.black,
  ),
  Product(
    name: 'King -Bed',
    image: 'lib/assets/bed.jpeg',
    desription: '6X6 with a Eurofoam Mattress Standard',
    price: '3,500,000',
    number: 1,
    color: Colors.white,
  ),
  Product(
    name: 'Air-pods',
    image: 'lib/assets/colorware-airpods.jpg',
    desription: 'Black colored air-pods',
    price: '150,000',
    number: 7,
    color: Colors.white,
  ),
  Product(
    name: 'Table',
    image: 'lib/assets/h3.jpeg',
    desription:
        'Round livin room table. Glass and wood material. France imported',
    price: '500,000',
    number: 5,
    color: Colors.grey,
  ),
  Product(
    name: 'IPhone 13 Max-Pro',
    image: 'lib/assets/ip13.jpg',
    desription: 'IPhone 13 with 256Gb',
    price: '7,800,000',
    number: 1,
    color: Colors.white,
  ),
  Product(
    name: 'IPhone 13',
    image: 'lib/assets/ip13.jpg',
    desription: 'Dark blue, 64GB',
    price: '6,500,000',
    number: 1,
    color: Colors.white,
  ),
  Product(
    name: 'Matress',
    image: 'lib/assets/matress2.jpg',
    desription:
        '6X6 Standard RoseFoam Matress. These terms are governed by the laws of the state of California, U.S.A., excluding its conflict of law provisions. If any portion of these terms is held to be invalid or unenforceable, the remaining portions will remain in full force and effect. In the event of a conflict between a translated version of these terms and the English language version, the English language version shall control.',
    price: '1,000,000',
    number: 3,
    color: Colors.white,
  ),
  Product(
    name: 'Mens-shoe',
    image: 'lib/assets/sh2.jpg',
    desription: 'Size 47 EU, France',
    price: '140,000',
    number: 1,
    color: Colors.white,
  ),
  Product(
    name: 'Womens-shoe',
    image: 'lib/assets/womes.png',
    desription: 'Size 36 EU, France',
    price: '100,000',
    number: 1,
    color: Colors.white,
  ),
];
