import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dashboard'),
          elevation: 2,
        ),
        body: Column(
          children: [TabBar(tabs: [])],
        ),
      ),
    );
  }
}
