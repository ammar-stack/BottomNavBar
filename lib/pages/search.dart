import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Search Screen',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
      ),
    );
  }
}