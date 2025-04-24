import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_mini_app/src/widgets/barra_inferior.dart';
//import 'package:go_router/go_router.dart';
//import 'package:recetas/src/widgets/barra_inferior.dart';
//import 'package:recetas/src/api/api.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key, required this.receta});

  final Map<String, dynamic> receta;

  @override
  Widget build(BuildContext context) {
    return Card(
      //color: const Color.fromARGB(255, 9, 220, 157),
      child: InkWell(
        onTap: () {
          //navegacion a la pantalla de detalle
          // Navigator
          context.goNamed(
            'detalle-recetas',
            pathParameters: {'recetasId': receta['id'].toString()},
            extra: receta,
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                height: 250,
                fit: BoxFit.fill,
                image: NetworkImage(receta['image']),
              ),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        (receta['nombre']),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    StatefulBuilder(builder: (context, setStateLocal) {
                      return IconButton(
                        icon: Icon(
                          recetasFavoritas.contains(receta)
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          if (recetasFavoritas.contains(receta)) {
                            recetasFavoritas.remove(receta);
                          } else {
                            recetasFavoritas.add(receta);
                          }
                          setStateLocal(() {});
                        },
                      );
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
