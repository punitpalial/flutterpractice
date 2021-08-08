import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final int days = 31;
  final String name = "Codepur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text('Welcome to $days days of $name flutter '),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
