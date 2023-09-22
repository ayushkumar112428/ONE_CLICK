import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class ItemImgDetails extends StatelessWidget {
  final String img;
  final String shortname;
  final String name;
  final String price;
  final String mprice;
  final String dprice;
  final String des;
  const ItemImgDetails(
      {super.key,
      required this.img,
      required this.shortname,
      required this.name,
      required this.price,
      required this.des,
      required this.dprice,
      required this.mprice});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 10,
                spreadRadius: 1,
              )
            ],
          ),
          child: Card(
            elevation: 1,
            color: Colors.white,
            margin: const EdgeInsets.all(10),
            child: Container(
              width: size.width * 1,
              height: 250,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image(image: AssetImage(img)),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          width: size.width * 1,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors
                    .white70, // Changed box shadow color to a different color
                blurRadius: 10,
                spreadRadius: 1,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                Text(
                  name,
                  style: const TextStyle(fontSize: 30),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis, // Use ellipsis for overflow
                ),
                Text(
                  shortname,
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 69, 67, 67)),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  dprice,
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 69, 67, 67)),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  des,
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 85, 84, 84)),
                  overflow: TextOverflow.clip,
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
