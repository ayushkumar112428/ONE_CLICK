import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/src/screens/forget_password/forget.dart';
import 'package:myapp/src/screens/home_page/home_page.dart';
import 'package:myapp/src/screens/sign_up/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        showDialog(context: context, builder: (context){
          return AlertDialog(
            title: const Text("Woring",style: TextStyle(color: Color.fromARGB(255, 237, 108, 99))),
            content: const Text("Enter correct Email.",style: TextStyle(fontSize: 17),),
            actions: [
              MaterialButton(onPressed: (){
                Get.back();
              },
              child: const Text("Cancle"),
              ),
              MaterialButton(onPressed: (){
                Get.back();
              },
              child: const Text("OK"),
              ),
            ],
          );
        });
        // print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        showDialog(context: context, builder: (context){
          return AlertDialog(
            title: const Text("Woring",style: TextStyle(color: Colors.red),),
            content: const Text("Enter Correct Password.",style: TextStyle(fontSize: 17),),
            actions: [
              MaterialButton(onPressed: (){
                Get.back();
              },
              child: const Text("Cancle"),
              ),
              MaterialButton(onPressed: (){
                Get.back();
              },
              child: const Text("OK"),
              ),
            ],
          );
        });
        // print('Wrong password provided for that user.');
      }
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.13,
              ),
              SingleChildScrollView(
                child: Center(
                  child: Container(
                    height: size.height * 0.75,
                    width: size.width * 0.85,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 7,
                              spreadRadius: 5),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 45),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: emailController,
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.person_outline_outlined),
                                labelText: "E-mail",
                                hintText: "Email",
                                border: OutlineInputBorder()),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
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
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ForgetPassword()));
                              },
                              child: const Text("ForgetPassword")),
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
                                // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const HomePage()));
                                signUserIn();
                              },
                              child: const Text(
                                "Login",
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
                                        builder: (context) =>
                                            const HomePage()));
                              },
                              label: const Text("Sign In With Google"),
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
                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> SignUpPage()));
                              },
                              child: const Text(
                                "Sign up",
                                style: TextStyle(color: Colors.blueAccent),
                              ),
                            )
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
      ),
    );
  }
}
