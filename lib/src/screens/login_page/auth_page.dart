import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/src/screens/home_page/home_page.dart';
import 'package:myapp/src/screens/login_page/login_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //user login all raeady
          if(snapshot.hasData){
            return HomePage();
          }
          //user not logine
          else{
            return LoginPage();
          }
        },
      ),
    );
  }
}