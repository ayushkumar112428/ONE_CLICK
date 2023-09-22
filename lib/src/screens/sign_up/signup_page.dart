import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/src/screens/home_page/home_page.dart';
import 'package:myapp/src/screens/login_page/login_page.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final userController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final numberController = TextEditingController();

  Future<void> storeUserData(
      String name, String email, String password, String number) async {
    try {
      await FirebaseFirestore.instance.collection('users').add({
        'name': name,
        'email': email,
        'pass': password,
        'phone': number,
      });
      print('User data stored successfully!');
    } catch (e) {
      print('Error storing user data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Material(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/img/login/login_page01.png'),
        )),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            SingleChildScrollView(
              child: Center(
                child: Container(
                  height: size.height * 0.85,
                  width: size.width * 0.85,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey, blurRadius: 7, spreadRadius: 5),
                      ]),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 7,
                      ),
                      const Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 45),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: userController,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.person_outline_outlined),
                              labelText: "User Name",
                              hintText: "User",
                              border: OutlineInputBorder()),
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: emailController,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.email),
                              labelText: "E-mail",
                              hintText: "Email",
                              border: OutlineInputBorder()),
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.fingerprint),
                            labelText: "Password",
                            hintText: "Password",
                            border: OutlineInputBorder(),
                            suffixIcon: IconButton(
                              onPressed: null,
                              icon: Icon(Icons.remove_red_eye_sharp),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: numberController,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            labelText: "Phone No",
                            hintText: "Phone No",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
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
                              FirebaseAuth.instance.createUserWithEmailAndPassword(
                                email: emailController.text,
                                password: passwordController.text,
                              ).then((value) {
                                storeUserData(
                                    userController.text,
                                    emailController.text,
                                    passwordController.text,
                                    numberController.text);
                                print("Created New Account");
                                Navigator.push(context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              }).onError((error, stackTrace) {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: const Text(
                                          "Woring",
                                          style: TextStyle(color: Colors.red),
                                        ),
                                        content: const Text(
                                          "Enter Vlide Etrise",
                                          style: TextStyle(fontSize: 17),
                                        ),
                                        actions: [
                                          MaterialButton(
                                            onPressed: () {
                                              Get.back();
                                            },
                                            child: const Text("Cancle"),
                                          ),
                                          MaterialButton(
                                            onPressed: () {
                                              Get.back();
                                            },
                                            child: const Text("OK"),
                                          ),
                                        ],
                                      );
                                    });
                                print("Error");
                              });
                            },
                            child: const Text(
                              "Sign Up",
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        "OR",
                        style:
                            TextStyle(fontSize: 17, color: Colors.blueAccent),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: OutlinedButton.icon(
                            icon: const Image(
                                image:
                                    AssetImage("assets/img/login/google.png"),
                                width: 22.0),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => const HomePage()));
                            },
                            label: const Text("Sign Up With Google"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have account?"),
                          TextButton(
                              onPressed: () {
                                // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> const LoginPage()));
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                                // Get.to(LoginPage());
                              },
                              child: const Text(
                                "Sign In",
                                style: TextStyle(color: Colors.blueAccent),
                              ))
                        ],
                      )
                    ],
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
