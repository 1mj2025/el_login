/*import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pagina prinicpal',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Cocina Riko'),backgroundColor: Colors.deepPurple,
          
          
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}*/
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mi_mini_app/registro/loging.dart';

import 'firebase_options.dart';
//import 'package:mi_mini_app/registro/loging.dart' show LoginPage;
//import 'login_page.dart'; // Importa la página de login

//void main() => runApp(const MyApp());

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);

runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cocina Riko',
      debugShowCheckedModeBanner: false,
      home: const LoginPage(), 
    );
  }
}
