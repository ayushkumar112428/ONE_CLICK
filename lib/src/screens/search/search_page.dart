import 'package:flutter/material.dart';
import 'package:myapp/src/itemdata/imageprice.dart';
import 'package:myapp/src/itemdata/images.dart';
import 'package:myapp/src/itemdata/imagesname.dart';
import 'package:myapp/src/screens/item_page/item_page.dart';

import '../../itemdata/item_des.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // ignore: prefer_final_fields
  List<Map<String, dynamic>> _items = [
    {
      'id': 1,
      'image': item01,
      'shortname': 'WAAN',
      'name': itemname1,
      'price': itemprice01.toStringAsFixed(2),
      'mprice': Mitemprice01.toStringAsFixed(2),
      'dprice': Ditemprice01.toStringAsFixed(2),
      "des": itemdes01,
    },
    {
      'id': 2,
      'image': item02,
      'shortname': 'T-shart',
      'name': itemname2,
      'price': itemprice02.toStringAsFixed(2),
      'mprice': Mitemprice02.toStringAsFixed(2),
      'dprice': Ditemprice02.toStringAsFixed(2),
      "des": itemdes02,
    },
    {
      'id': 3,
      'image': item03,
      'shortname': 'MI',
      'name': itemname3,
      'price': itemprice03.toStringAsFixed(2),
      'mprice': Mitemprice03.toStringAsFixed(2),
      'dprice': Ditemprice03.toStringAsFixed(2),
      "des": itemdes03,
    },
    {
      'id': 4,
      'image': item04,
      'shortname': 'DELL',
      'name': itemname4,
      'price': itemprice04.toStringAsFixed(2),
      'mprice': Mitemprice04.toStringAsFixed(2),
      'dprice': Ditemprice04.toStringAsFixed(2),
      "des": itemdes04,
    },
    {
      'id': 5,
      'image': item05,
      'shortname': 'VEGA NEO',
      'name': itemname5,
      'price': itemprice05.toStringAsFixed(2),
      'mprice': Mitemprice05.toStringAsFixed(2),
      'dprice': Ditemprice05.toStringAsFixed(2),
      "des": itemdes05,
    },
    {
      'id': 6,
      'image': item06,
      'shortname': 'Shart',
      'name': itemname6,
      'price': itemprice06.toStringAsFixed(2),
      'mprice': Mitemprice06.toStringAsFixed(2),
      'dprice': Ditemprice06.toStringAsFixed(2),
      "des": itemdes06,
    },
    {
      'id': 7,
      'image': item07,
      'shortname': 'T-shart',
      'name': itemname7,
      'price': itemprice07.toStringAsFixed(2),
      'mprice': Mitemprice07.toStringAsFixed(2),
      'dprice': Ditemprice07.toStringAsFixed(2),
      "des": itemdes07,
    },
    {
      'id': 8,
      'image': item08,
      'shortname': 'T-shart',
      'name': itemname8,
      'price': itemprice08.toStringAsFixed(2),
      'mprice': Mitemprice08.toStringAsFixed(2),
      'dprice': Ditemprice08.toStringAsFixed(2),
      "des": itemdes08,
    },
    {
      'id': 9,
      'image': item09,
      'shortname': 'T-shart',
      'name': itemname9,
      'price': itemprice09.toStringAsFixed(2),
      'mprice': Mitemprice09.toStringAsFixed(2),
      'dprice': Ditemprice09.toStringAsFixed(2),
      "des": itemdes09,
    },
    {
      'id': 10,
      'image': item10,
      'shortname': 'T-shart',
      'name': itemname10,
      'price': itemprice10.toStringAsFixed(2),
      'mprice': Mitemprice10.toStringAsFixed(2),
      'dprice': Ditemprice10.toStringAsFixed(2),
      "des": itemdes10,
    },
    {
      'id': 11,
      'image': item11,
      'shortname': 'NOTHING',
      'name': itemname11,
      'price': itemprice11.toStringAsFixed(2),
      'mprice': Mitemprice11.toStringAsFixed(2),
      'dprice': Ditemprice11.toStringAsFixed(2),
      "des": itemdes11,
    },
    {
      'id': 12,
      'image': item12,
      'shortname': 'SAMSUNG',
      'name': itemname12,
      'price': itemprice12.toStringAsFixed(2),
      'mprice': Mitemprice12.toStringAsFixed(2),
      'dprice': Ditemprice12.toStringAsFixed(2),
      "des": itemdes12,
    },
    {
      'id': 13,
      'image': item13,
      'shortname': 'GOOGLE',
      'name': itemname13,
      'price': itemprice13.toStringAsFixed(2),
      'mprice': Mitemprice13.toStringAsFixed(2),
      'dprice': Ditemprice13.toStringAsFixed(2),
      "des": itemdes13,
    },
    {
      'id': 14,
      'image': item14,
      'shortname': 'ONEPLUS',
      'name': itemname14,
      'price': itemprice14.toStringAsFixed(2),
      'mprice': Mitemprice14.toStringAsFixed(2),
      'dprice': Ditemprice14.toStringAsFixed(2),
      "des": itemdes14,
    },
  ];

  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _items;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _items;
    } else {
      results = _items
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFFE5EFF0),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              cursorColor: Colors.white,
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                hintText: "Search",
                suffixIcon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    gapPadding: 2,
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 2,
                      style: BorderStyle.solid,
                    )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: _foundUsers.isNotEmpty
                    ? ListView.builder(
                        itemCount: _foundUsers.length,
                        itemBuilder: (context, index) => Card(
                          elevation: 1,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ItemPage(
                                          img: _foundUsers[index]["image"],
                                          name: _foundUsers[index]["name"],
                                          price: _foundUsers[index]["price"],
                                          mprice: _foundUsers[index]["mprice"],
                                          dprice: _foundUsers[index]["dprice"],
                                          des: _foundUsers[index]["des"],
                                          shortname: _foundUsers[index]
                                              ["shortname"],
                                        )),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    child: Image(
                                      image: AssetImage(
                                          _foundUsers[index]["image"]),
                                      height: 170,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: size.width * 0.4,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        _foundUsers[index]['name'],
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        _foundUsers[index]['price'],
                                        style: const TextStyle(
                                            fontSize: 20, color: Colors.green),
                                      ),
                                      Text(
                                        _foundUsers[index]['des'],
                                        style: const TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : Card(
                        child: Container(
                          height: 10,
                          width: size.width * 0.9,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 186, 183, 232),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 138, 130, 244),
                                  blurRadius: 5,
                                ),
                              ]),
                          child: const Center(
                            child: Text(
                              'Not Found item',
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      )),
          ],
        ),
      ),
    );
  }
}

// ListTile(
//                           leading: Container(
//                             height: 300,
//                             width: 200,
//                             // decoration: BoxDecoration(
//                             //     // borderRadius: BorderRadius.circular(10),
//                             //     image: DecorationImage(
//                             //   fit: BoxFit.fitHeight,
//                             //   image: AssetImage(_foundUsers[index]['image']),
//                             // )),
//                             child: Image(image: AssetImage(_foundUsers[index]['image']),height: 200,),
//                           ),
//                           title: Text(_foundUsers[index]['name']),
//                           subtitle: Text('${_foundUsers[index]["price"]}'),
//                         ),
