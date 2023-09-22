import 'package:flutter/material.dart';
import 'package:myapp/src/screens/bay_now/address.dart';
import 'package:myapp/src/screens/bay_now/item_img_details.dart';

// ignore: camel_case_types
class bayNow extends StatelessWidget {
  final String img;
  final String shortname;
  final String name;
  final String price;
  final String mprice;
  final String dprice;
  final String des;
  const bayNow(
      {Key? key,
      required this.img,
      required this.shortname,
      required this.name,
      required this.price,
      required this.dprice,
      required this.des, required this.mprice})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 185, 192, 219),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Container(
              //   width: size.width * 1,
              //   height: 55,
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //   ),
              //   child: Align(
              //     alignment: Alignment.centerLeft,
              //     child: Padding(
              //       padding: const EdgeInsets.symmetric(
              //           horizontal: 15, vertical: 20),
              //       child: IconButton(
              //           onPressed: () {
              //             Navigator.of(context)
              //                 .pushReplacement(MaterialPageRoute(
              //                     builder: (context) => ItemPage(
              //                           img: img,
              //                           name: name,
              //                           price: price,
              //                           des: des,
              //                           shortname: shortname,
              //                         )));
              //           },
              //           icon: const Icon(
              //             Icons.arrow_back_ios_new_rounded,
              //             color: Colors.black,
              //             size: 30,
              //           )),
              //     ),
              //   ),
              // ),
              ItemImgDetails(
                des: des,
                img: img,
                name: name,
                price: price,
                mprice: mprice,
                dprice: dprice,
                shortname: shortname,
              ),
              AddressOfUser(
                des: des,
                img: img,
                name: name,
                price: price,
                dprice: dprice,
                shortname: shortname, 
                mprice: mprice,
              ),
            ],
          ),
        ));
  }
}
