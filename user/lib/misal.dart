// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class Misal extends StatefulWidget {
  const Misal({Key? key}) : super(key: key);

  @override
  _MisalState createState() => _MisalState();
}

class _MisalState extends State<Misal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: FlutterLogo(
              size: 200,
              style: FlutterLogoStyle.horizontal,
              curve: Curves.bounceInOut,
              duration: Duration(seconds: 5),
            ),
          )
        ],
      ),
    );
  }
}
