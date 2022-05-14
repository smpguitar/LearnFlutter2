import 'package:flutter/material.dart';

class Steves extends StatefulWidget {
  Steves({Key? key}) : super(key: key);

  @override
  State<Steves> createState() => _StevesState();
}

int _counter = 0;

class _StevesState extends State<Steves> {
  void _incrementCounter() {
    setState(() {
      _counter = _counter + 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                const Text('Steve has pushed the button this many times:'),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
