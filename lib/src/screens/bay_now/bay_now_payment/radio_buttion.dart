import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myapp/src/screens/bay_now/bay_now_payment/successfully_done.dart';

class MyRadioWidget extends StatefulWidget {
  final String img;
  final String shortname;
  final String name;
  final String price;
  final String mprice;
  final String dprice;
  final String des;
  
  MyRadioWidget({
    Key? key,
    required this.img,
    required this.shortname,
    required this.name,
    required this.price,
    required this.des, 
    required this.dprice, 
    required this.mprice,
  }) : super(key: key);
  
  @override
  _MyRadioWidgetState createState() => _MyRadioWidgetState();
}

class _MyRadioWidgetState extends State<MyRadioWidget> {
  int selectedValue = 1;

  // final String _imgfirebase = '';
  // final String _shortnamefirebase = '';
  // final String _namefirebase = '';
  // final String _pricefirebase = '';
  // final String _mpricefirebase = '';
  // final String _dpricefirebase = '';
  // final String _desfirebase = '';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RadioListTile(
          title: Text('Credit or debit card'),
          value: 1,
          groupValue: selectedValue,
          onChanged: (value) {
            select_card(value);
          },
        ),
        RadioListTile(
          title: Text('Net Banking'),
          value: 2,
          groupValue: selectedValue,
          onChanged: (value) {
            select_card(value);
          },
        ),
        RadioListTile(
          title: Text('Other UPI Apps'),
          value: 3,
          groupValue: selectedValue,
          onChanged: (value) {
            select_card(value);
          },
        ),
        RadioListTile(
          title: Text('EMI'),
          value: 4,
          groupValue: selectedValue,
          onChanged: (value) {
            select_card(value);
          },
        ),
        RadioListTile(
          title: Text('Cash on Delivery/Pay on Delivery'),
          value: 5,
          groupValue: selectedValue,
          onChanged: (value) {
            select_card(value);
          },
        ),
        const SizedBox(
          height: 7,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: Size(size.width * 0.92, 50),
            primary: Color.fromARGB(255, 245, 223, 18), // background color
            onPrimary: Colors.black, // foreground color
            shadowColor: Colors.grey, // elevation color
            elevation: 2, // elevation of button
          ),
          onPressed: () async {
                String imgfirebase = widget.img;
                String shortnamefirebase = widget.shortname;
                String namefirebase = widget.name;
                String pricefirebase = widget.price;
                String mpricefirebase = widget.mprice;
                String dpricefirebase = widget.dprice;
                String desfirebase =widget.des;

                String field1Value = imgfirebase;
                String field2Value = shortnamefirebase;
                String field3Value = namefirebase;
                String field4Value = pricefirebase;
                String field5Value = mpricefirebase;
                String field6Value = dpricefirebase;
                String field7Value = desfirebase;

                // Create a reference to the Firestore collection
                final CollectionReference sitem = FirebaseFirestore.instance.collection('SelectedItem');

                // Add a new document with a generated ID
                await sitem.add({
                  'Img': field1Value,
                  'Short name': field2Value,
                  'Name': field3Value,
                  'Price': field4Value,
                  'Month Price': field5Value,
                  'Discount Price': field6Value,
                  'Item Details': field7Value,
                });
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => SplashScreen(
                    img: widget.img,
                    shortname: widget.shortname,
                    name: widget.name,
                    price: widget.price,
                    mprice: widget.mprice,
                    dprice: widget.dprice,
                    des: widget.des,)));
          },
          child: const Text(
            "Use this address",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }

  void select_card(int? value) {
    return setState(() {
      selectedValue = value!;
      print(selectedValue);
    });
  }
}
