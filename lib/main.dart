import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Counter Apps',
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Apps'),
      ),
      body: const Center(child: Counter()),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CounterIncrementor(onPressed: _increment),
        const SizedBox(
          width: 16,
        ),
        CounterDisplay(count: _counter),
        const SizedBox(
          width: 16,
        ),
        CounterReset(onPressed: _reset),
      ],
    );
  }
}

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({required this.count, Key? key}) : super(key: key);

  final int count;

  @override
  Widget build(BuildContext context) {
    return Text('Count : $count');
  }
}

class CounterIncrementor extends StatelessWidget {
  const CounterIncrementor({required this.onPressed, Key? key})
      : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text('Add Count'),
    );
  }
}

class CounterReset extends StatelessWidget {
  const CounterReset({required this.onPressed, Key? key}) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text('Reset Count'),
    );
  }
}
