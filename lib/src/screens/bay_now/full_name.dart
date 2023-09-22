import 'package:flutter/material.dart';

class FullName extends StatelessWidget {
  final String boxTextTitle;
  final String boxText;
  const FullName({Key? key, required this.boxText, required this.boxTextTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20,bottom: 5,top: 7),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              boxTextTitle,
              style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
            ),
          ),
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
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 4.0,
                spreadRadius: 0.7,
                blurStyle: BlurStyle.outer,
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              cursorWidth: 1.0,
              cursorHeight: 20,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                hintText: boxText,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
