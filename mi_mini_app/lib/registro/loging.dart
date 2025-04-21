/*import 'package:flutter/material.dart';
import 'package:mi_mini_app/registro/register_page.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});
  
  @override
  Widget build(BuildContext context) {

    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(padding: 
        const EdgeInsets.all(26.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 85),
            const Text('Login',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 29,
            ),
            ),
            const SizedBox(height: 17),
            const Text('Ingresa email y contraseña para ingresar',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(height: 45),
            const Text('Email',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Ingresa tu Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text('Password',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  if(emailController.text.isEmpty || passwordController.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Debes de ingresar email y contraseña')),
                    );
                    return;
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 17),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Iniciar sesión'),
                ),
            ),
            const SizedBox(height: 25),
            Center(
              child: TextButton(onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const RegisterPage(),
                ),
                );
              }, child: const Text('¿No tiene una cuenta? Registrate'),
              ),
            )
          ],

        ),
        ),
      ) 
    );
  }

}*/
/*import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      body: Container(
        color: Colors.cyan,
        height: size.height,
        width: size.width,
        child: Stack(
          children: [Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: size.height * 0.53,
              width: size.width,
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
                color: Colors.lightBlueAccent,
                image: DecorationImage(image: AssetImage('lib/assets/fondo_2.jpg'))
              ),
            ),
          )],
        ),
      )
    );

    }

    }*/
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mi_mini_app/registro/pantalla_1.dart';
import 'package:mi_mini_app/registro/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height * 0.53,
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                  bottomRight: Radius.circular(60),
                ),
                color: Colors.lightBlueAccent,
                image: const DecorationImage(
                  image: AssetImage('lib/assets/fondo_2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 45),
            const Text('LOGING', 
            style: TextStyle(
              fontSize: 40,
              color: Colors.green,
              height: 1.2,
            ),),
          

            Padding(
              padding: const EdgeInsets.all(26.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 35),
                  
                  //const SizedBox(height: 17),
                  const Text('Ingresa email y contraseña para ingresar',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 45),
                  const Text('Email',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      prefix: const Icon(Icons.email),
                      hintText: 'Ingresa tu Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text('Password',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefix: const Icon(Icons.lock),
                      hintText: 'Ingresa tu Contraseña',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (emailController.text.isEmpty || passwordController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Debes de ingresar email y contraseña'),
                              backgroundColor: Colors.red,
                            ),
                          );
                          return;
                        }
                        else{
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Pantalla_1()),
                          );
                          //Pantalla_1

                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 17),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text('Iniciar sesión'),
                    ),
                  ),
                  const SizedBox(height: 25),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const RegisterPage(),
                        ),);
                      },
                      child: const Text('¿No tiene una cuenta? Registrate'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
void login (BuildContext context) async{
  final UserCredential = await _authService.signInWithEmailAndPassword(
    _emailController.text,
    _passwordController.text,
  );
  if (UserCredential != null){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const Pantalla_1()));
  }
}*/