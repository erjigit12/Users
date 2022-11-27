// ignore_for_file: library_private_types_in_public_api, file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:user/user_model.dart';

class TajryibaJoly extends StatefulWidget {
  const TajryibaJoly({Key? key, required this.userData}) : super(key: key);
  final User userData;

  @override
  _TajryibaJolyState createState() => _TajryibaJolyState();
}

class _TajryibaJolyState extends State<TajryibaJoly> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.userData.atyJone,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green[50],
        elevation: 0.0,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Colors.green[50]),
          child: Column(
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage(widget.userData.profil),
              ),
              Text(
                widget.userData.atyJone,
                style: const TextStyle(fontFamily: 'Tillana', fontSize: 20),
              ),
              Text(
                'Jashy: ${widget.userData.jash.toString()}',
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text(
                  widget.userData.tajryibaJoly,
                  style: const TextStyle(
                    fontFamily: 'Tillana',
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
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
        ),
      ),
    );
  }
}
