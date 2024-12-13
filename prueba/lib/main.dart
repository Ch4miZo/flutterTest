import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:prueba/dinamic_list.dart';

import 'my_home_page.dart';


void main() {
  log('Que pasa, me imprimo primero');

  runApp(
    const MyApp()
  );
}

Future<void> obtenerDatos() async  {
  log('Empezo...');
  await Future.delayed(const Duration(seconds: 2),() {
    log('Estoy dentro');
  });
  log('He salido');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: '',),
    );
  }
}


