import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pomap/src/pages/signin.dart';

class Signup extends StatelessWidget {
  const Signup ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login page'),
        automaticallyImplyLeading: true,
      ),
      body:
      Column(children: [
        TextField(
            decoration:
            InputDecoration(
              labelText: 'username',
        )
        ),
        TextField(
            decoration:
            InputDecoration(
              labelText: 'E-mail',
            )
        ),
        TextField(
            decoration:
            InputDecoration(
              labelText: 'password',
            )
        ),
        TextField(
            decoration:
            InputDecoration(
              labelText: 're-password',
            )
        ),
        ElevatedButton(
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>const Signin())
              );
            },
            child: Text('Resister')
        ),
      ],
      ),
    );
  }
}