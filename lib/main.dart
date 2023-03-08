import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pomap/src/app.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDefault();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: App(),
    );
  }
}

Future<void> initializeDefault() async {
  FirebaseApp app = await Firebase.initializeApp();
  print('Initialized default app $app');
}