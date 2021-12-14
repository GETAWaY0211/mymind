// ignore_for_file: deprecated_member_use
import 'package:emotion/diary/dairy.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'profile.dart';
import 'todolist.dart';
import 'diary/dairy.dart';

class Note extends StatefulWidget {
  static const routeName = '/statistics';

  const Note({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _NoteState();
  }
}

class _NoteState extends State<Note> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Note"),
        centerTitle: true,
        backgroundColor: const Color(0xffa2d18c),
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
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          color: const Color(0xffDEEFD6),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ToDo()),
                      );
                    },
                    child: Container(
                      child: Column(
                        children: const [
                          Text(
                            'To-Do List',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Image(image: AssetImage('images/todo.png'))
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      height: 315,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 0, bottom: 15),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Dairy()),
                      );
                    },
                    child: Container(
                      child: Column(
                        children: const [
                          Text(
                            'Diary',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Image(image: AssetImage('images/diary.png'))
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width,
                      height: 315,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
