import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/src/provider.dart';
import 'package:provider_eg2/providers/SecondPage.dart';
import 'package:provider_eg2/providers/counter_provider.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider App Example  ${context.watch<Counter>().count}'),
      ),
      body: Center(
          child: Column(
        children: [
          Text(' ${context.watch<ShoppingCart>().Count}'),
          Text(' ${context.watch<ShoppingCart>().cart}'),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        key: Key('addItem_floatingActionButton'),
        onPressed: () {
          context.read<ShoppingCart>().addItem('Bread');
        },
        tooltip: 'Add Item',
        child: Icon(Icons.add),
      ),
    );
  }
}
