import 'dart:developer';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8), 
              child: Text('Prueba padding')
            ),
            GestureDetector(
              onTap: () => log('message'),
              child: const Card(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Prueba Card',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ),
            
            Container(
              decoration: const BoxDecoration(color: Colors.blueAccent),
              margin: const EdgeInsets.only(left: 24),
              padding: const EdgeInsets.all(8),
              child: const Text('Prueba Container'),
            ),
            const SizedBox(
              width: 80,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Prueba1'),
                    Icon(Icons.add_a_photo),
                    Text('Prueba1'),
                  ],
                ),
              ),
            ),
            const Text(
              'You have pushed the button this many times:',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.blueAccent),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}