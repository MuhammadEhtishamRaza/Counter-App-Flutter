import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter First App"),
        centerTitle: true,
        backgroundColor: Colors.purple.shade100,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "You have pushed the button this many times",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            Text(
              _count.toString(),
              style: const TextStyle(fontSize: 40,color: Colors.deepPurple, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: _decrement,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(12),
              ),
              child: const Icon(Icons.remove, size: 30),
            ),
            ElevatedButton(
              onPressed: _increment,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(12),
              ),
              child: const Icon(Icons.add, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}