import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Contact Screen',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
      ),
    );
  }
}