import 'package:flutter/material.dart';
import 'profile.dart';
import 'calender.dart';

class Statistics extends StatefulWidget {
  static const routeName = '/statistics';

  const Statistics({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _StatisticsState();
  }
}

class _StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              },
              icon: const Icon(Icons.account_circle_outlined))
        ],
        centerTitle: true,
        title: const Text('Result'),
        backgroundColor: const Color(0xff97AFDE),
      ),
      body: const Calender(),
      backgroundColor: const Color(0xffE0EAFD),
    );
  }
}
