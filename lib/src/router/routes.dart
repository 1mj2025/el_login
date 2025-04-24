import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
//import 'package:my_mini_app/registro/login_page.dart';
import 'package:my_mini_app/registro/register_page.dart';
//import 'package:my_mini_app/registro/register_page.dart';
import 'package:my_mini_app/src/views/detalle_recetas_page.dart';
import 'package:my_mini_app/src/views/favoritos.dart';
import 'package:my_mini_app/src/views/home_page.dart';
//import 'package:go_router/go_router.dart';
//import 'package:recetas/src/views/detalle_recetas_page.dart';
//import 'package:recetas/src/views/home_page.dart';
//import 'package:recetas/src/views/favoritos.dart';
//import 'package:redit_clone/src/views/login_page.dart';

final router = GoRouter(
  initialLocation: '/recetas',
  routes: [
    GoRoute(
      path: '/recetas',
      name: 'recetas',
      builder: (context, settings) => HomePage(),
      routes: [
        GoRoute(
          path: '/:recetasId',
          name: 'detalle-recetas',
          builder: (BuildContext context, GoRouterState settings) {
            final id = settings.pathParameters['recetasId'];
            final extras = settings.extra as Map;
            debugPrint('extras: $extras');
            ///print(extras);

            return DetalleRecetasPage(
              id: '$id',
              extras: extras,
            );
          },
        ),
        GoRoute(
      path: '/register',
     name: '/register',
      builder: (context, State) => const RegisterPage(),
    ),
      ],
      
    ),
    /*GoRoute(
        path: '/login',
        name: 'login',
        builder: (context, settings) => LoginPage())*/
    GoRoute(
      path: '/favoritos',
      name: 'favoritos',
      builder: (context, State) => const Favoritospage(),
    ),

    
  ],
);
