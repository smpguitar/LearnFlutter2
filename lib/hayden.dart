import 'package:flutter/material.dart';

class Haydens extends StatefulWidget {
  Haydens({Key? key}) : super(key: key);

  @override
  State<Haydens> createState() => _Haydens();
}

int _counter = 16;

class _Haydens extends State<Haydens> {
  void _incrementCounter() {
    setState(() {
      _counter--;
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
                const Text('Hayden has pushed the button this many times:'),
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
