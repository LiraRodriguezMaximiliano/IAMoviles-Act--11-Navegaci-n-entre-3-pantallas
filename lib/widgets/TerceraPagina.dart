import 'package:flutter/material.dart';

class TerceraPagina extends StatelessWidget {
  const TerceraPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Maximiliano Lira Rodriguez 6-I', style: TextStyle(color: Colors.black)),
        backgroundColor: const Color.fromARGB(255, 0, 126, 128), // Azul Marino
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.2),
                    blurRadius: 10,
                    spreadRadius: 5,
                  )
                ],
              ),
              child: const Center(child: Text('Contenedor 200x200')),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                context, '/', (route) => false
              ),
              child: const Text('Volver al Inicio (Reset)'),
            ),
          ],
        ),
      ),
    );
  }
}