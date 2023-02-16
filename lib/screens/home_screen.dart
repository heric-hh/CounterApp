import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final TextStyle estiloTexto =
      const TextStyle(fontSize: 30, color: Colors.black54, fontFamily: 'Lato');

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int contador = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(224, 247, 116, 1),
        title: const Text(
          '//   Home Screen',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'Tourney',
              fontWeight: FontWeight.bold,
              fontSize: 32),
        ),
        elevation: 1,
      ),
      backgroundColor: const Color.fromRGBO(234, 231, 223, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'número de taps:',
              style: estiloTexto,
            ),
            Text(
              '$contador',
              style: estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.black,
        backgroundColor: const Color.fromRGBO(224, 247, 116, 1),
        child: const Icon(Icons.add),
        onPressed: () {
          contador++;
          print('Presionaste el boton');
          print(contador);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
