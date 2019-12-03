import 'package:flutter/material.dart';

// 逐级向下传输数据
class StateManagementDemo extends StatefulWidget {
  @override
  _StateManagementDemoState createState() => _StateManagementDemoState();
}

class _StateManagementDemoState extends State<StateManagementDemo> {
  int count = 0;

  void _increaseCount() {
    setState(() {
      count += 1;
    });
    print(count);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateManagementDemo'),
        elevation: 0,
      ),
      body: CounterWrapper(count, _increaseCount),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _increaseCount,
      ),
    );
  }
}

class CounterWrapper extends StatelessWidget {
  final int count;
  final VoidCallback increaseCount;

  CounterWrapper(this.count, this.increaseCount);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Counter(count, increaseCount),
    );
  }
}

class Counter extends StatelessWidget {
  final int count;
  final VoidCallback increaseCount;

  Counter(this.count, this.increaseCount);

  @override
  Widget build(BuildContext context) {
    return  ActionChip(
      label: Text('$count'),
      onPressed: increaseCount,
    );
  }
}