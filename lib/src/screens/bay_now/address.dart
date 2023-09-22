import 'package:flutter/material.dart';
import 'package:myapp/src/screens/bay_now/deop_dow_manu_country.dart';
import 'package:myapp/src/screens/bay_now/drop_dow_manu_state.dart';
import 'package:myapp/src/screens/bay_now/full_name.dart';

import 'bay_now_payment/bay_now_payment_page.dart';

class AddressOfUser extends StatelessWidget {
  final String img;
  final String shortname;
  final String name;
  final String price;
  final String mprice;
  final String dprice;
  final String des;
  const AddressOfUser(
      {super.key,
      required this.img,
      required this.shortname,
      required this.name,
      required this.price,
      required this.dprice,
      required this.des, 
      required this.mprice});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 1,
      // height: ,
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
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 5, top: 7),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Add a new address",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: size.width * 0.9,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white70,
                border: Border.all(
                  width: 1.4,
                  color: const Color.fromARGB(255, 43, 42, 42),
                ),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4.0,
                      spreadRadius: 0.7,
                      blurStyle: BlurStyle.outer),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ),
                ]),
            child: const Center(
                child: Text(
              "Use current location",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            )),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(children: <Widget>[
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: const Divider(
                    color: Colors.black,
                    height: 50,
                  )),
            ),
            const Text(
              "OR",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: const Divider(
                    color: Colors.black,
                    height: 50,
                  )),
            ),
          ]),
          const dropManuCountry(),
          const SizedBox(
            height: 5,
          ),
          const FullName(
            boxText: 'Enter Full Name',
            boxTextTitle: 'Full Name (First and Last Name)',
          ),
          const SizedBox(
            height: 7,
          ),
          const FullName(
            boxText: 'Enter Mobile Number',
            boxTextTitle: 'Mobile Number',
          ),
          const SizedBox(
            height: 7,
          ),
          const FullName(
            boxText: '',
            boxTextTitle: 'Flat, House no, Building, Company, Apartment',
          ),
          const SizedBox(
            height: 7,
          ),
          const FullName(
            boxText: '',
            boxTextTitle: 'Area, Street, Sector, Village',
          ),
          const SizedBox(
            height: 7,
          ),
          const FullName(
            boxText: 'E.g.near apollo hospital',
            boxTextTitle: 'Landmark',
          ),
          const SizedBox(
            height: 7,
          ),
          const FullName(
            boxText: '6 digits [0-9] PIN code',
            boxTextTitle: 'Pincode',
          ),
          const SizedBox(
            height: 7,
          ),
          const FullName(
            boxText: '',
            boxTextTitle: 'Town/City',
          ),
          const SizedBox(
            height: 7,
          ),
          const DropMenuState(),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(size.width * 0.92, 50),
              primary: Color.fromARGB(255, 245, 223, 18), // background color
              onPrimary: Colors.black, // foreground color
              shadowColor: Colors.grey, // elevation color
              elevation: 2, // elevation of button
            ),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => BayNowPayment(
              //             img: img,
              //             name: name,
              //             price: price,
              //             des: des,
              //             shortname: shortname,
              //           )),
              // );
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => BayNowPayment(
                        img: img,
                        name: name,
                        price: price,
                        dprice: dprice,
                        des: des,
                        shortname: shortname, 
                        mprice: mprice,
                      )));
            },
            child: const Text(
              "Use this address",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
