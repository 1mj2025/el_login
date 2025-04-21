import 'package:flutter/material.dart';

class Pantalla_1 extends StatelessWidget {
  const Pantalla_1 ({super.key});

  @override
  Widget build(BuildContext context) {
    //final emailController = TextEditingController();
    //final passwordController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.purpleAccent,
            ),
            const Text('Mypagenumero 1',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,

              ),
            )
          ],
        
        ),
      )
    );
  

    }}
