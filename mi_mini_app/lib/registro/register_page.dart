import 'package:flutter/material.dart';
import 'package:mi_mini_app/registro/pantalla_1.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage ({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 85),
              const Text('Register',
              style: TextStyle(
                color: Colors.lightGreen,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              ),
              const SizedBox(height: 16),
              const Text('Ingresa tu correo y contraseña para continuar',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              ),
              const Text('Email',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'ejemplo@gmail.com',
                  prefix: const Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(color: Colors.red),

                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(color: Colors.green),

                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text('Password',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: passwordController,
                obscureText: true,//!isPasswordVisible,//true,
                decoration: InputDecoration(
                  hintText: 'Ingresa tu contraseña',
                  prefix: const Icon(Icons.lock_outlined),
                  suffixIcon: IconButton(onPressed: (){
                    //setState((){
                     // isPasswordVisible = !isPasswordVisible;
                   // });
                  }, icon: const Icon(Icons.visibility_off)
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.white,
                    width: 3),
                  ),
                ),
              ),
              const SizedBox(height: 11),
              ///apartado de olvido la constraseña
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: (){}, 
                  child: const Text('¿Olvidaste la constraseña?',
                  style: TextStyle(
                    color: Colors.deepOrangeAccent),
                  ),
                  ),
              ),
              const SizedBox(height: 30),
              SizedBox(width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  if (emailController.text.isEmpty || passwordController.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Ingresa tu coreo y constraseña'),
                        backgroundColor: Colors.red,
                        ),
                    );
                    return;
                  }
                  else {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Pantalla_1()),
                    );
                  }
                  //la autenticacion
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsetsDirectional.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                  elevation: 6,
                ),
                 child: const Text('INICIAR SESIÓN',
                 style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                 ),
                 ),
                 ),
                 ),
                 const SizedBox(height: 25),

            ],
          ),
          ),
      )
    );
  }
}