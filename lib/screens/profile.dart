import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 40.0,
                  child: Text(
                    'Y',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ), //MY IMAGE
              Divider(
                height: 90.0,
                color: Colors.grey[800],
              ), // SPACE
              const Text(
                'NAME: ',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ), //NAME
              const SizedBox(
                height: 10.0,
              ), //SMALL SPACE
              const Text(
                'Youssef Mohsen',
                style: TextStyle(
                    color: Colors.green, letterSpacing: 2.0, fontSize: 18.0),
              ), //YOUSSEF MOHSEN
              const SizedBox(
                height: 30.0,
              ), //BIG SPACE
              const Text(
                'UserName: ',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ), //NAME
              const SizedBox(
                height: 10.0,
              ), //SMALL SPACE
              const Text(
                'Youssef',
                style: TextStyle(
                    color: Colors.green, letterSpacing: 2.0, fontSize: 18.0),
              ), //YOUSSEF MOHSEN
              const SizedBox(
                height: 30.0,
              ), //BIG SPACE
              const Text(
                'Password: ',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ), //GPA
              const SizedBox(
                height: 10.0,
              ), //SMALL SPACE
              const Text(
                '0000',
                style: TextStyle(
                  color: Colors.green,
                  letterSpacing: 2.0,
                  fontSize: 18.0,
                ),
              ), // MY GPA
              const SizedBox(
                height: 40.0,
              ), // BIG SPACE
              const Row(
                children: [
                  Icon(
                    Icons.mail,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'youssefmohsen7110@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0,
                      fontSize: 16.0,
                    ),
                  )
                ],
              ) //MAIL ICON AND MY EMAIL
            ],
          ),
        ));
  }
}
