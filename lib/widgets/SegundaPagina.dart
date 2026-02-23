import 'package:flutter/material.dart';

class SegundaPagina extends StatelessWidget {
  const SegundaPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Página', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://picsum.photos/300/200',
                  height: 200,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const Center(child: CircularProgressIndicator());
                  },
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/tercera'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF000080), 
                  foregroundColor: Colors.white
                ),
                child: const Text('Ir a la Tercera Página'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Regresar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}