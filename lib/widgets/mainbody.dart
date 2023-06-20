import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
      ),
    );
  }
}
