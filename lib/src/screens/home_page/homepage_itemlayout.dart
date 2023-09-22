import 'package:flutter/material.dart';
import 'package:myapp/src/screens/home_page/item_container.dart';

// ignore: camel_case_types
class homepageItemLayout extends StatelessWidget {
  final Map<String, dynamic> item;
  const homepageItemLayout({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ItemContainer(
      img: '${item['image']}',
      name: '${item['name']}', 
      price: '${item['price']}', 
      mprice: '${item['mprice']}', 
      dprice: '${item['dprice']}', 
      des: '${item['des']}', 
      shortname: '${item['shortname']}', 
      );
  }
}