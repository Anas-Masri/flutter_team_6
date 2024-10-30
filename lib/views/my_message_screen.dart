import 'package:flutter/material.dart';

class MyMessageScreen extends StatefulWidget {
  const MyMessageScreen({super.key});

  @override
  State<MyMessageScreen> createState() => _MyMessageScreenState();
}

class _MyMessageScreenState extends State<MyMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('MyMessageScreen'),
    );
  }
}
