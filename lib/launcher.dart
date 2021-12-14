import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'check.dart';
import 'home.dart';
import 'statistics.dart';
import 'note.dart';

class Launcher extends StatefulWidget {
  static const routeName = '/launcher';

  const Launcher({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LauncherState();
  }
}

class _LauncherState extends State<Launcher> {
  int _selectedIndex = 0;
  var userOneDocumentRef1 = FirebaseFirestore.instance
      .collection(FirebaseAuth.instance.currentUser!.email!)
      .doc(DateFormat('dd MMM yyyy').format(DateTime.now()));
  var userOneDocumentRef2 = FirebaseFirestore.instance
      .collection(FirebaseAuth.instance.currentUser!.email!)
      .doc(DateFormat('MMM yyyy').format(DateTime.now()));

  final List<Widget> _pageWidget = <Widget>[
    const Home(),
    const Check(),
    const Statistics(),
    const Note(),
  ];
  final List<BottomNavigationBarItem> _menuBar = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
      backgroundColor: Color(0xffF9ACC0),
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.fact_check_outlined),
      label: 'Assessment',
      backgroundColor: Color(0xffC6A7E4),
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.analytics_outlined),
      label: 'Result',
      backgroundColor: Color(0xff97AFDE),
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.note_add_outlined,
      ),
      label: 'Note',
      backgroundColor: Color(0xffa2d18c),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      userOneDocumentRef1.get().then((value) {
        if (value.exists == false) {
          userOneDocumentRef1
              .set({"Date": DateFormat('dd MMM yyyy').format(DateTime.now())});
        }
        // ignore: avoid_print
        print(value.exists);
      });
      userOneDocumentRef2.get().then((value) {
        if (value.exists == false) {
          userOneDocumentRef2.set({
            "Date": DateFormat('dd MMM yyyy').format(DateTime.now()),
            "Month": DateFormat('MMM yyyy').format(DateTime.now())
          });
        }
        // ignore: avoid_print
        print(value.exists);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageWidget.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: _menuBar,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
