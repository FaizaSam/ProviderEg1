import 'dart:math';
import 'package:provider/provider.dart';
import '../providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider App Example ${context.watch<Counter>().count}'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times '),
            Count(),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                child: Text('Launch Screen'))
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<Counter>().decrement(),
            key: Key('decrement_floatingActionButton'),
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
          SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            onPressed: () => context.read<Counter>().reset(),
            key: Key('reset_floatingActionButton'),
            tooltip: 'reset',
            child: Icon(Icons.exposure_zero),
          ),
          SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            onPressed: () => context.read<Counter>().increment(),
            key: Key('increment_floatingActionButton'),
            tooltip: 'increment',
            child: Icon(Icons.add),
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
    );
  }
}

class Count extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      '${context.watch<Counter>().count}',
      key: Key('counterState'),
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
