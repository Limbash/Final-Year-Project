import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [Text('Control panel')],
          ),
        ),
      ),
    );
  }
}
