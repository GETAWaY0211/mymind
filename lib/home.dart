// ignore_for_file: prefer_const_constructors

import 'package:emotion/home/newhome.dart';
import 'package:emotion/profile.dart';
import 'package:flutter/material.dart';
import 'profile.dart';

class Home extends StatefulWidget {
  static const routeName = '/';

  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Profile()),
                  );
                },
                icon: Icon(Icons.account_circle_outlined))
          ],
          backgroundColor: const Color(0xffF9ACC0),
          centerTitle: true,
          title: const Text('Home'),
        ),
        body: HomeScreen());
  }
}
