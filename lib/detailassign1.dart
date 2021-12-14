import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emotion/emoji.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'check.dart';
import 'package:intl/intl.dart';

class DetailPage1 extends StatefulWidget {
  const DetailPage1({Key? key}) : super(key: key);

  @override
  _DetailPage1State createState() => _DetailPage1State();
}

class _DetailPage1State extends State<DetailPage1> {
  int data = 0;
  // ignore: non_constant_identifier_names
  EmojiData UserEmoji = EmojiData(emote: '');
  // ignore: non_constant_identifier_names
  final CollectionReference _UserCollection = FirebaseFirestore.instance
      .collection(FirebaseAuth.instance.currentUser!.email!);
  var userOneDocumentRef = FirebaseFirestore.instance
      .collection(FirebaseAuth.instance.currentUser!.email!)
      .doc(DateFormat('dd MMM yyyy').format(DateTime.now()));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE4D9EF),
      body: SafeArea(
          child: Hero(
        tag: 'assign1',
        child: Card(
            margin: const EdgeInsets.all(10),
            clipBehavior: Clip.antiAlias,
            elevation: 0.0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
            child: Stack(children: <Widget>[
              // ignore: sized_box_for_whitespace
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: 360,
                  child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            InkWell(
                                onTap: () {
                                  Navigator.pop(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Check()));
                                },
                                child: const Icon(
                                  Icons.arrow_back,
                                )),
                            Text(
                              DateFormat('dd MMM yyyy').format(DateTime.now()),
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Montserrat',
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            // ignore: sized_box_for_whitespace
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: TextButton(
                                    onPressed: () => showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        title: const Text(
                                          '😄',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 70),
                                        ),
                                        content: const Text(
                                            'This symbol you\'re in a good mood.\n\n -You think today to be your lucky day.\n -You wished something, it came true.\n -You are content with today.'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                context, 'Cancel'),
                                            child: const Text(
                                              'Cancel',
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () => {
                                              Navigator.pop(context, '😄'),
                                              data = 1,
                                              // ignore: avoid_print
                                              print("$data"),
                                              UserEmoji.emote = '😄',
                                              userOneDocumentRef.update({
                                                "mood": "Happiness",
                                                "emoji": UserEmoji.emote,
                                                'Date':
                                                    DateFormat('dd MMM yyyy')
                                                        .format(DateTime.now())
                                              })
                                            },
                                            child: const Text(
                                              'OK',
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    child: const Text(
                                      '😄',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 50),
                                    ),
                                  ),
                                  margin:
                                      const EdgeInsets.only(top: 10, right: 22),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.black26,
                                            spreadRadius: 1,
                                            blurRadius: 2,
                                            offset: Offset(0, 1))
                                      ],
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                        color: Colors.black26,
                                      )),
                                ),
                                Container(
                                  child: TextButton(
                                    onPressed: () => showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        title: const Text(
                                          '😟',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 70),
                                        ),
                                        content: const Text(
                                            'This symbol that you\'re in a sad mood.\n\n -You think today is your unhappy day.\n -You are disappointed with what happened.\n -Today is your bad day.'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                context, 'Cancel'),
                                            child: const Text(
                                              'Cancel',
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () => {
                                              Navigator.pop(context, '😟'),
                                              data = 2,
                                              // ignore: avoid_print
                                              print("$data"),
                                              UserEmoji.emote = '😟',
                                              userOneDocumentRef.update({
                                                "mood": "Sadness",
                                                "emoji": UserEmoji.emote,
                                                'Date':
                                                    DateFormat('dd MMM yyyy')
                                                        .format(DateTime.now())
                                              })
                                            },
                                            child: const Text(
                                              'OK',
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    child: const Text(
                                      '😟',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 50),
                                    ),
                                  ),
                                  margin:
                                      const EdgeInsets.only(top: 10, right: 22),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.black26,
                                            spreadRadius: 1,
                                            blurRadius: 2,
                                            offset: Offset(0, 1))
                                      ],
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                        color: Colors.black26,
                                      )),
                                ),
                                Container(
                                  child: TextButton(
                                    onPressed: () => showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        title: const Text(
                                          '🤬',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 70),
                                        ),
                                        content: const Text(
                                            'This symbol you\'re in an angry mood.\n\n -Something happened today.\n -You are impatient with something.\n -You are edgy with things.'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                context, 'Cancel'),
                                            child: const Text(
                                              'Cancel',
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () => {
                                              Navigator.pop(context, '🤬'),
                                              data = 3,
                                              // ignore: avoid_print
                                              print("$data"),
                                              UserEmoji.emote = '🤬',
                                              userOneDocumentRef.update({
                                                "mood": "Anger",
                                                "emoji": UserEmoji.emote,
                                                'Date':
                                                    DateFormat('dd MMM yyyy')
                                                        .format(DateTime.now())
                                              })
                                            },
                                            child: const Text(
                                              'OK',
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    child: const Text(
                                      '🤬',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 50),
                                    ),
                                  ),
                                  margin:
                                      const EdgeInsets.only(top: 10, right: 22),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.black26,
                                            spreadRadius: 1,
                                            blurRadius: 2,
                                            offset: Offset(0, 1))
                                      ],
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                        color: Colors.black26,
                                      )),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child: TextButton(
                                    onPressed: () => showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        title: const Text(
                                          '😱',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 70),
                                        ),
                                        content: const Text(
                                            'This symbol you\'re in a fearful mood.\n\n -You saw something dangerous today.\n -You feel uncomfortable with something.\n -You have to be patient or avoid.'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                context, 'Cancel'),
                                            child: const Text(
                                              'Cancel',
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () => {
                                              Navigator.pop(context, '😱'),
                                              data = 4,
                                              // ignore: avoid_print
                                              print("$data"),
                                              UserEmoji.emote = '😱',
                                              userOneDocumentRef.update({
                                                "mood": "Fear",
                                                "emoji": UserEmoji.emote,
                                                'Date':
                                                    DateFormat('dd MMM yyyy')
                                                        .format(DateTime.now())
                                              })
                                            },
                                            child: const Text(
                                              'OK',
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    child: const Text(
                                      '😱',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 50),
                                    ),
                                  ),
                                  margin:
                                      const EdgeInsets.only(top: 15, right: 22),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.black26,
                                            spreadRadius: 1,
                                            blurRadius: 2,
                                            offset: Offset(0, 1))
                                      ],
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                        color: Colors.black26,
                                      )),
                                ),
                                Container(
                                  child: TextButton(
                                    onPressed: () => showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        title: const Text(
                                          '🤩',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 70),
                                        ),
                                        content: const Text(
                                            'This symbol you\'re in an excited mood.\n\n -You find something that exceeds expectations.\n -Found something beyond expectation.\n -Are you surprised or shocked what happened.'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                context, 'Cancel'),
                                            child: const Text(
                                              'Cancel',
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () => {
                                              Navigator.pop(context, '🤩'),
                                              data = 5,
                                              // ignore: avoid_print
                                              print("$data"),
                                              UserEmoji.emote = '🤩',
                                              userOneDocumentRef.update({
                                                "mood": "Excitement",
                                                "emoji": UserEmoji.emote,
                                                'Date':
                                                    DateFormat('dd MMM yyyy')
                                                        .format(DateTime.now())
                                              })
                                            },
                                            child: const Text(
                                              'OK',
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    child: const Text(
                                      '🤩',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 50),
                                    ),
                                  ),
                                  margin:
                                      const EdgeInsets.only(top: 15, right: 22),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.black26,
                                            spreadRadius: 1,
                                            blurRadius: 2,
                                            offset: Offset(0, 1))
                                      ],
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                        color: Colors.black26,
                                      )),
                                ),
                                Container(
                                  child: TextButton(
                                    onPressed: () => showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                        title: const Text(
                                          '🤢',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 70),
                                        ),
                                        content: const Text(
                                            'This symbol you\'re in a loath mood.\n\n -You feel disgusted about something.\n -Hate the taste, smell, image, people.'),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                context, 'Cancel'),
                                            child: const Text(
                                              'Cancel',
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: () => {
                                              Navigator.pop(context, '🤢'),
                                              data = 6,
                                              // ignore: avoid_print
                                              print("$data"),
                                              UserEmoji.emote = '🤢',
                                              userOneDocumentRef.update({
                                                "mood": "Disgust",
                                                "emoji": UserEmoji.emote,
                                                'Date':
                                                    DateFormat('dd MMM yyyy')
                                                        .format(DateTime.now())
                                              })
                                            },
                                            child: const Text(
                                              'OK',
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    child: const Text(
                                      '🤢',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 50),
                                    ),
                                  ),
                                  margin:
                                      const EdgeInsets.only(top: 15, right: 22),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.black26,
                                            spreadRadius: 1,
                                            blurRadius: 2,
                                            offset: Offset(0, 1))
                                      ],
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                        color: Colors.black26,
                                      )),
                                ),
                              ],
                            ),
                          ]))),
            ])),
      )),
    );
  }
}
