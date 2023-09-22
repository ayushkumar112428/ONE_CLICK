import 'package:flutter/material.dart';
import 'package:myapp/src/screens/item_page/item_page.dart';

class SplashScreen extends StatefulWidget {
  final String img;
  final String shortname;
  final String name;
  final String price;
  final String mprice;
  final String dprice;
  final String des;
  const SplashScreen(
      {Key? key,
      required this.img,
      required this.shortname,
      required this.name,
      required this.price,
      required this.des,
      required this.dprice, required this.mprice})
      : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    super.initState();
    startAnimation();
  }

  // static SplashScreen get find => Get.find();

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      animate = true;
    });
    await Future.delayed(const Duration(milliseconds: 5000));
    // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const HomePage()));
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => ItemPage(
              img: widget.img,
              name: widget.name,
              price: widget.price,
              mprice: widget.mprice,
              dprice: widget.dprice,
              des: widget.des,
              shortname: widget.shortname,
            )));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1800),
              // bottom: animate ? 130 : 0,
              bottom: size.height * 0.29,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1700),
                opacity: animate ? 1 : 0,
                child: const Image(
                    height: 460,
                    width: 400,
                    image: AssetImage("assets/img/done/done.png")),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1800),
              // bottom: animate ? 250 : 0,
              bottom: 220,
              right: 65,
              left: 50,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1700),
                opacity: animate ? 1 : 0,
                child: Container(
                  // width: tSplashContainerSize,
                  // height: tSplashContainerSize,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.transparent,
                  ),
                  child: const Text(
                    "Successfully Done!",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 30,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
