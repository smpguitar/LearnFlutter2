import 'package:flutter/material.dart';

class Daves extends StatefulWidget {
  Daves({Key? key}) : super(key: key);

  @override
  State<Daves> createState() => _Daves();
}

int _counter = 0;

class _Daves extends State<Daves> {
  void _incrementCounter() {
    setState(() {
      _counter++;
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
                const Text('Dave has pushed the button this many times:'),
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
