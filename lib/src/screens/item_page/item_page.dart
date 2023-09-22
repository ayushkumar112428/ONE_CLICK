import 'package:flutter/material.dart';
import 'package:myapp/src/screens/bay_now/bay_now.dart';
// import 'package:myapp/src/screens/home_page/home_page.dart';

class ItemPage extends StatelessWidget {
  final String img;
  final String shortname;
  final String name;
  final String price;
  final String mprice;
  final String dprice;
  final String des;
  const ItemPage({
    super.key,
    required this.img,
    required this.name,
    required this.price,
    required this.des,
    required this.shortname, 
    required this.dprice, required this.mprice,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 185, 192, 219),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.6,
              width: size.width * 1,
              decoration: const BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90),bottomRight: Radius.circular(90)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 10,
                    spreadRadius: 1,
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(
                  //       horizontal: 15, vertical: 20),
                  //   child: IconButton(
                  //       onPressed: () {
                  //         Navigator.of(context)
                  //             .pushReplacement(MaterialPageRoute(
                  //                 builder: (context) => HomePage()));
                  //       },
                  //       icon: const Icon(
                  //         Icons.arrow_back_ios_new_rounded,
                  //         color: Colors.black,
                  //         size: 30,
                  //       )),
                  // ),
                  Center(
                    child: Container(
                      child: Image(
                        image: AssetImage(img),
                        height: size.height * 0.45,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Container(
              // height: size.height * 0.6,
              width: size.width * 1,
              decoration: const BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90),bottomRight: Radius.circular(90)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 10,
                    spreadRadius: 1,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shortname,
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    stare(),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      '₹$mprice /month',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      '24months Cost EMI Plan with HDFC credit-card.',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        const Text(
                          '26\% off  ',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                        Text(
                          '\₹$price',
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                        Text(
                          '  \₹$dprice',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'Secured Packaging Free',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Container(
              height: 130,
              width: size.width * 1,
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
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // SizedBox(width: 5,),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(size.width * 0.45, 50),
                          primary: const Color.fromARGB(
                              255, 133, 136, 138), // background color
                          onPrimary: Colors.white, // foreground color
                          shadowColor: Colors.green, // elevation color
                          elevation: 5, // elevation of button
                        ),
                        onPressed: () {
                          // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const HomePage()));
                        },
                        child: const Text(
                          "Pay with EMI",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(size.width * 0.45, 50),
                          primary: const Color.fromARGB(
                              255, 245, 223, 18), // background color
                          onPrimary: Colors.white, // foreground color
                          shadowColor: Colors.green, // elevation color
                          elevation: 5, // elevation of button
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => bayNow(
                          //             img: img,
                          //             name: name,
                          //             price: price,
                          //             des: des,
                          //             shortname: shortname,
                          //           )),
                          // );
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                                  builder: (context) => bayNow(
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
                          "Buy now",
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row stare() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          Icons.star_rate,
          color: Colors.green,
          size: 20,
        ),
        Icon(
          Icons.star_rate,
          color: Colors.green,
          size: 20,
        ),
        Icon(Icons.star_rate, color: Colors.green, size: 20),
        Icon(Icons.star_rate, color: Colors.green, size: 20),
        Icon(Icons.star_rate, color: Colors.grey, size: 20),
      ],
    );
  }
}
