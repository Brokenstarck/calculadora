
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              FloatingActionButton(onPressed: () {}, child: Text('7')),
              FloatingActionButton(onPressed: () {}, child: Text('8')),
              FloatingActionButton(onPressed: () {}, child: Text('9')),
              FloatingActionButton(onPressed: () {}, child: Text('/')),
            ],
          ),
          Row(
            children: [
              FloatingActionButton(onPressed: () {}, child: Text('4')),
              FloatingActionButton(onPressed: () {}, child: Text('5')),
              FloatingActionButton(onPressed: () {}, child: Text('6')),
              FloatingActionButton(onPressed: () {}, child: Text('*')),
            ],
          ),
          Row(
            children: [
              FloatingActionButton(onPressed: () {}, child: Text('1')),
              FloatingActionButton(onPressed: () {}, child: Text('2')),
              FloatingActionButton(onPressed: () {}, child: Text('3')),
              FloatingActionButton(onPressed: () {}, child: Text('-')),
            ],
          ),
          Row(
            children: [
              FloatingActionButton(onPressed: () {}, child: Text('0')),
              FloatingActionButton(onPressed: () {}, child: Text('.')),
              FloatingActionButton(onPressed: () {}, child: Text('=')),
              FloatingActionButton(onPressed: () {}, child: Text('+')),
            ],
          ),
        ],
      ),
    );
  }
}
