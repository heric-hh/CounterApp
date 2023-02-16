import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;

  void incrementar() {
    contador++;
    setState(() {});
  }

  void decrementar() {
    contador--;
    setState(() {});
  }

  void reiniciar() {
    contador = 0;
    setState(() {});
  }

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
      floatingActionButton: CustomFloatingActionButton(
        decrease: decrementar,
        increase: incrementar,
        reset: reiniciar,
      ),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  final Function increase;
  final Function decrease;
  final Function reset;

  const CustomFloatingActionButton({
    Key? key,
    required this.increase,
    required this.decrease,
    required this.reset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SizedBox(
          width: 15,
        ),
        FloatingActionButton.extended(
          onPressed: () => increase(),
          label: const Text('Súmale Rey'),
          icon: const Icon(Icons.add),
          foregroundColor: Colors.black,
          backgroundColor: const Color.fromRGBO(224, 247, 116, 1),
        ),
        FloatingActionButton.extended(
          onPressed: () => reset(),
          label: const Text('😒'),
          icon: const Icon(Icons.restore),
          foregroundColor: Colors.black,
          backgroundColor: const Color.fromRGBO(224, 247, 116, 1),
        ),
        FloatingActionButton.extended(
          onPressed: () => decrease(),
          label: const Text('Quítale'),
          icon: const Icon(Icons.exposure_minus_1),
          foregroundColor: Colors.black,
          backgroundColor: const Color.fromRGBO(224, 247, 116, 1),
        ),
      ],
    );
  }
}
