import 'package:flutter/material.dart';

// ignore: camel_case_types
class dropManuCountry extends StatefulWidget {
  const dropManuCountry({super.key});

  @override
  State<dropManuCountry> createState() => _dropManuCountryState();
}

// ignore: camel_case_types
class _dropManuCountryState extends State<dropManuCountry> {
  String selectedItem = 'Bharat';

  List<String> items = [
    'Afghanestan',
    'Australia',
    'Bharat',
    'Canada',
    'France',
    'Japan',
    'Nepal',
    'Swaziland',
    'Zambia'
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
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
            child: DropdownButton<String>(
              value: selectedItem,
              onChanged: (String? newValue) {
                setState(() {
                  selectedItem = newValue!;
                });
              },
              items: items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Container(
                    width: size.width * 0.83,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
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
                    child: Center(child: Text(value)),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
