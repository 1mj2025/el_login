import 'package:flutter/material.dart';
import 'package:my_mini_app/src/api/api.dart';
import 'package:my_mini_app/src/widgets/item_list.dart';
//import 'package:recetas/src/api/api.dart';
//import 'package:recetas/src/widgets/item_list.dart';

class AperitivosPage extends StatelessWidget {
  const AperitivosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 230, 207),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 248, 230, 207),
        title: Text(
          "Aperitivos",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: const Color.fromARGB(255, 97, 62, 49)),
        ),
      ),
      body: ListView.builder(
        itemCount: aperitivos.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemList(
            receta: aperitivos[index],
          );
        },
      ),
    );
  }
}
