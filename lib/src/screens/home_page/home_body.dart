import 'package:flutter/material.dart';
import 'package:myapp/src/itemdata/itemdatalist.dart';
import 'package:myapp/src/screens/home_page/homepage_itemlayout.dart';
import 'package:myapp/src/screens/home_page/slidar_add.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5EFF0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            SliderAdd(),
            const SizedBox(
              height: 5,
            ),
            Container(
              color: const Color(0xFFE5EFF0),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                crossAxisSpacing: 3,
                physics: const NeverScrollableScrollPhysics(),
                children: itemsList.map((singleitem) => homepageItemLayout(item: singleitem,)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
