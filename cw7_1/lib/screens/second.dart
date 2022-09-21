import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage({Key? key, required this.message, required this.color})
      : super(key: key);

  final String message;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: color,
      body: Center(
        child: Text(message),
      ),
    );
  }
}

