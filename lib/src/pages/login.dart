import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
              labelText: 'password',
            )
        ),
        ElevatedButton(
            onPressed: (){},
            child: Text('Login')
        ),
      ],
      ),
    );
  }
}
