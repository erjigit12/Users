// ignore_for_file: public_member_api_docs, sort_constructors_first, unused_local_variable
import 'package:flutter/material.dart';
import 'package:user/user_data.dart';
import 'tajryibaJoly.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Колдонуучулар',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.green[50],
        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.green[50],
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: users.length,
          itemBuilder: (BuildContext context, index) {
            final user = users[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TajryibaJoly(userData: user);
                    },
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(left: 8, right: 8, top: 10),
                height: 75,
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(22),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(user.profil),
                  ),
                  title: Text(user.atyJone),
                  subtitle: Text('${user.kesiby} ${user.jash} jashta'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
