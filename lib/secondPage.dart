import 'package:flutter/material.dart';


class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Second Page"),
        ),
      ),
      body: Center(
        child : Text("Welcome to the Second Page")
      ),
    );
  }
}