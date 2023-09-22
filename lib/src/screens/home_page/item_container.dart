import 'package:flutter/material.dart';
import 'package:myapp/src/screens/item_page/item_page.dart';

class ItemContainer extends StatelessWidget {
  final String img;
  final String shortname;
  final String name;
  final String price;
  final String mprice;
  final String dprice;
  final String des;

  const ItemContainer({
    Key? key,
    required this.img,
    required this.name,
    required this.price,
    required this.des,
    required this.shortname, 
    required this.dprice, required this.mprice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        
        Navigator.push(context,
          MaterialPageRoute(builder: (context) => ItemPage(img: img, name: name, price: price, des: des, shortname: shortname, dprice: dprice, mprice: mprice,)),
        );
        // Navigator.of(context).pushReplacement(MaterialPageRoute(
        //     builder: (context) => ItemPage(
        //           img: img,
        //           name: name,
        //           price: price,
        //           des: des,
        //           shortname: shortname,
        //         )));
      },
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          width: size.width * 0.5,
          color: const Color.fromARGB(255, 49, 48, 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                color: const Color.fromARGB(255, 246, 246, 247),
                height: 130,
                width: size.width * 0.5,
                child: Image.asset(
                  img,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 58,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        name.toUpperCase(),
                        style:
                            const TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        price,
                        style:
                            const TextStyle(fontSize: 16, color: Colors.green),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
