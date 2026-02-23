import 'package:flutter/material.dart';
import 'package:myapp/widgets/PaginaInicial.dart';
import 'package:myapp/widgets/SegundaPagina.dart';
import 'package:myapp/widgets/TerceraPagina.dart';
// Importamos los otros archivos
void main() {
  runApp(const MiAppNavegacion());
}

class MiAppNavegacion extends StatelessWidget {
  const MiAppNavegacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Navegación',
      initialRoute: '/',
      routes: {
        '/': (context) => const PaginaInicial(),
        '/segunda': (context) => const SegundaPagina(),
        '/tercera': (context) => const TerceraPagina(),
      },
    );
  }
}