// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:app_1/User_data.dart';
import 'package:flutter/material.dart';

class TajryibaJoly extends StatefulWidget {
  const TajryibaJoly({Key? key}) : super(key: key);

  @override
  _TajryibaJolyState createState() => _TajryibaJolyState();
}

class _TajryibaJolyState extends State<TajryibaJoly> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Тажрыйба Жолу',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          const Text(
            tajryibaJoly,
            style: TextStyle(fontFamily: 'Tillana'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(100, 50),
            ),
            child: const Icon(
              Icons.person,
            ),
          ),
        ],
      ),
    );
  }
}
