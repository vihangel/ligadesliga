import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          Text('oi'),
          IconButton(onPressed: () {}, icon: Icon(Icons.offline_bolt)),
        ],
      ),
    );
  }
}
