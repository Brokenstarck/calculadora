
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String ultimaoperacion = '';
  String operacion = '0';
  String resultado = '0';

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
          ultimaoperacion,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
        Text(
          operacion,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
        Text(
          resultado,
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
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
                      Expanded(child: FloatingActionButton(onPressed: () {}, child: const Text('7'))),
                      Expanded(child: FloatingActionButton(onPressed: () {}, child: const Text('8'))),
                      Expanded(child: FloatingActionButton(onPressed: () {}, child: const Text('9'))),
                      Expanded(child: FloatingActionButton(onPressed: () {}, child: const Text('/'))),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: FloatingActionButton(onPressed: () {}, child: const Text('4'))),
                      Expanded(child: FloatingActionButton(onPressed: () {}, child: const Text('5'))),
                      Expanded(child: FloatingActionButton(onPressed: () {}, child: const Text('6'))),
                      Expanded(child: FloatingActionButton(onPressed: () {}, child: const Text('*'))),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: FloatingActionButton(onPressed: () {}, child: const Text('1'))),
                      Expanded(child: FloatingActionButton(onPressed: () {}, child: const Text('2'))),
                      Expanded(child: FloatingActionButton(onPressed: () {}, child: const Text('3'))),
                      Expanded(child: FloatingActionButton(onPressed: () {}, child: const Text('-'))),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: FloatingActionButton(onPressed: () {}, child: const Text('0'))),
                      Expanded(child: FloatingActionButton(onPressed: () {}, child: const Text('.'))),
                      Expanded(child: FloatingActionButton(onPressed: () {}, child: const Text('='))),
                      Expanded(child: FloatingActionButton(onPressed: () {}, child: const Text('+'))),
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
