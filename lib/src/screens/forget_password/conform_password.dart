import 'package:flutter/material.dart';
import 'package:myapp/src/screens/login_page/login_page.dart';

class CmPassword extends StatelessWidget {
  const CmPassword({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final Size = MediaQuery.of(context).size;
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            height: 320,
            width: Size.width * 0.7,
            image: const AssetImage("assets/img/forget/forgetpassword.jpg"),
          ),
          const Text(
            "Forget Password",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 13,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.numbers),
                  labelText: "Password",
                  hintText: "Password",
                  border: OutlineInputBorder()),
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.numbers),
                  labelText: "Conform Password",
                  hintText: "Conform Password",
                  border: OutlineInputBorder()),
            ),
          ),
          const SizedBox(height: 13,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red, // background color
                  onPrimary: Colors.white, // foreground color
                  shadowColor: Colors.green, // elevation color
                  elevation: 5, // elevation of button
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                },
                child: const Text(
                  "Submit",
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30,),
        ],
      ),
    );
  }
}