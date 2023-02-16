import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;
  final TextStyle estiloTexto =
      const TextStyle(fontSize: 30, color: Colors.black54, fontFamily: 'Lato');

  @override
  Widget build(BuildContext context) {
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
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            width: 15,
          ),
          FloatingActionButton.extended(
            onPressed: () => setState(() {
              contador++;
            }),
            label: const Text('Súmale Rey'),
            icon: const Icon(Icons.add),
            foregroundColor: Colors.black,
            backgroundColor: const Color.fromRGBO(224, 247, 116, 1),
          ),
          FloatingActionButton.extended(
            onPressed: () => setState(() {
              contador = 0;
            }),
            label: const Text('😒'),
            icon: const Icon(Icons.restore),
            foregroundColor: Colors.black,
            backgroundColor: const Color.fromRGBO(224, 247, 116, 1),
          ),
          FloatingActionButton.extended(
            onPressed: () => setState(() {
              contador--;
            }),
            label: const Text('Quítale'),
            icon: const Icon(Icons.exposure_minus_1),
            foregroundColor: Colors.black,
            backgroundColor: const Color.fromRGBO(224, 247, 116, 1),
          ),
        ],
      ),
      /*floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.black,
        backgroundColor: const Color.fromRGBO(224, 247, 116, 1),
        child: const Icon(Icons.add),
        onPressed: () {
          contador++;
          print('Presionaste el boton');
          print(contador);
        },
      ),*/
    );
  }
}
