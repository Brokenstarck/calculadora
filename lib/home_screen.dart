
import 'package:flutter/material.dart';
import 'package:calculadora/funcionalidades.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Calculadora calculadora = Calculadora();

  void pulsar(String valor) {
    setState(() {
      calculadora.pulsarBoton(valor);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
      ),
      body: Column(
        children: [

          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    calculadora.ultimaoperacion,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    calculadora.operacion,
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            flex: 1,
            child: Column(
              children: [

                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: FloatingActionButton(onPressed: () => pulsar('('), child: const Text('('))),
                      Expanded(child: FloatingActionButton(onPressed: () => pulsar(')'), child: const Text(')'))),
                      Expanded(child: FloatingActionButton(onPressed: () => pulsar('<-'), child: const Text('<-'))),
                      Expanded(child: FloatingActionButton(onPressed: () => pulsar('C'), child: const Text('C'))),
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: FloatingActionButton(onPressed: () => pulsar('7'), child: const Text('7'))),
                      Expanded(child: FloatingActionButton(onPressed: () => pulsar('8'), child: const Text('8'))),
                      Expanded(child: FloatingActionButton(onPressed: () => pulsar('9'), child: const Text('9'))),
                      Expanded(child: FloatingActionButton(onPressed: () => pulsar('/'), child: const Text('/'))),
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: FloatingActionButton(onPressed: () => pulsar('4'), child: const Text('4'))),
                      Expanded(child: FloatingActionButton(onPressed: () => pulsar('5'), child: const Text('5'))),
                      Expanded(child: FloatingActionButton(onPressed: () => pulsar('6'), child: const Text('6'))),
                      Expanded(child: FloatingActionButton(onPressed: () => pulsar('*'), child: const Text('*'))),
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: FloatingActionButton(onPressed: () => pulsar('1'), child: const Text('1'))),
                      Expanded(child: FloatingActionButton(onPressed: () => pulsar('2'), child: const Text('2'))),
                      Expanded(child: FloatingActionButton(onPressed: () => pulsar('3'), child: const Text('3'))),
                      Expanded(child: FloatingActionButton(onPressed: () => pulsar('-'), child: const Text('-'))),
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: FloatingActionButton(onPressed: () => pulsar(','), child: const Text(','))),
                      Expanded(child: FloatingActionButton(onPressed: () => pulsar('0'), child: const Text('0'))),
                      Expanded(child: FloatingActionButton(onPressed: () => pulsar('+'), child: const Text('+'))),
                      Expanded(child: FloatingActionButton(onPressed: () => pulsar('='), child: const Text('='))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
