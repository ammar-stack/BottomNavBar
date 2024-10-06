import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Home Screen',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
      ),
    );
  }
}