// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:app_1/User_data.dart';
import 'package:app_1/tajryibaJoly.dart';
import 'package:flutter/material.dart';

class ListTilePage extends StatefulWidget {
  const ListTilePage({Key? key}) : super(key: key);

  @override
  _ListTilePageState createState() => _ListTilePageState();
}

class _ListTilePageState extends State<ListTilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Колдонуучулар',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: users.length,
          itemBuilder: (BuildContext context, index) {
            final user = users[index];
            return ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(user.profil),
              ),
              title: Text(user.atyJone),
              subtitle: Text('${user.kesiby} ${user.jash} jashta'),
              trailing: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => const TajryibaJoly()),
                    ),
                  );
                },
                child: const Icon(Icons.arrow_forward_ios),
              ),
            );
          },
        ));
  }
}
