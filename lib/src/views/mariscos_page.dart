import 'package:flutter/material.dart';
import 'package:my_mini_app/src/api/api.dart';
import 'package:my_mini_app/src/widgets/item_list.dart';
//import 'package:recetas/src/api/api.dart';
//import 'package:recetas/src/widgets/item_list.dart';

class MariscosPage extends StatelessWidget {
  const MariscosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 230, 207),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 248, 230, 207),
        title: Text(
          "Mariscos",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: const Color.fromARGB(255, 97, 62, 49)),
        ),
      ),
      body: ListView.builder(
        itemCount: mariscos.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemList(
            receta: mariscos[index],
          );
        },
      ),
    );
  }
}
