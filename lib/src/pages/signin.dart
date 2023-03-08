import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        title: Text('hih'),
      ),
      body:
        Column(
        children:[
          Text('Welcome to pomap'),

          ElevatedButton(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>const Login())
                );
                },
              child: Text('Login')
    ),
        ]
    ),
      );
  }
}

