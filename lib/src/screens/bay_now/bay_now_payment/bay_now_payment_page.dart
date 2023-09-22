import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:myapp/src/screens/bay_now/bay_now_payment/radio_buttion.dart';

class BayNowPayment extends StatelessWidget {
  final String img;
  final String shortname;
  final String name;
  final String price;
  final String mprice;
  final String dprice;
  final String des;
  const BayNowPayment(
      {super.key,
      required this.img,
      required this.shortname,
      required this.name,
      required this.price,
      required this.des, 
      required this.dprice, required this.mprice});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 235, 240),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 5,top: 35,left: 22),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Select a payment method ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
            ),
            MyRadioWidget(img: img,name: name,price: price,des: des,shortname: shortname, dprice: dprice, mprice: mprice,),
          ],
        ),
      ),
    );
  }
}
