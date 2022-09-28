
import 'package:flutter/material.dart';

class FlutterPrac extends StatefulWidget {
  const FlutterPrac({super.key});

  @override
  State<FlutterPrac> createState() => _FlutterPracState();
}

class _FlutterPracState extends State<FlutterPrac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('2nd page')),
    );
  }
}