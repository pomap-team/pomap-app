import 'package:pomap/src/pages/glogin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pomap/src/pages/signin.dart';
import 'package:pomap/src/pages/signup.dart';

import 'login.dart';

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body:StreamBuilder
        (stream:FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {

          return Scaffold(
              appBar: AppBar(
                title: Text("SNS Login"),
              ),
              body: Center(
                child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>const Signup())
                          );
                        },
                        child: Text('Sign up free')
                    ),
                    GloginWidget(),
                    TextButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>const Login())
                          );
                        },
                        child: Text('Log in')
                    ),

                  ],
                ),
              )
          );

      },),


    );
  }
}
