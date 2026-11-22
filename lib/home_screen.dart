import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
      ),
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(),
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