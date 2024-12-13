import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:faker/faker.dart' as fk;

// ignore: camel_case_types
class dinamic_list extends StatelessWidget {
  const dinamic_list({super.key});

  @override
  Widget build(BuildContext context) {
    var faker = fk.Faker();
    return Scaffold(
      appBar: AppBar(title: const Text("Prueba de lista"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) { 
          return ListTile(
            onTap: () => log('message:::$index'),
            contentPadding: const EdgeInsets.only(left: 8),
            leading: const Icon(Icons.attach_money, color: Colors.purple),
            title: Text(faker.person.name()),
            subtitle: Text(
              'Monto: \$${faker.randomGenerator.decimal(min: 50, scale: 500).toStringAsFixed(2)}'),
          );
        },
        itemCount: 10,
      ),
    );
  }
}