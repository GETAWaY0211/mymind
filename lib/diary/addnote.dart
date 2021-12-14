// ignore_for_file: deprecated_member_use

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Addnote extends StatefulWidget {
  const Addnote({Key? key}) : super(key: key);

  @override
  State<Addnote> createState() => _AddnoteState();
}

class _AddnoteState extends State<Addnote> {
  TextEditingController title = TextEditingController();

  TextEditingController content = TextEditingController();

  var ref = FirebaseFirestore.instance
      .collection(FirebaseAuth.instance.currentUser!.email!)
      .doc('Note')
      .collection('diary')
      .doc(DateFormat('dd MMM yyyy HH:mm:ss').format(DateTime.now()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff26c6da),
        actions: [
          FlatButton(
              onPressed: () {
                ref.set({
                  'date': DateTime.now(),
                  'time':
                      DateFormat('dd MMM yyyy HH:mm').format(DateTime.now()),
                  'title': title.text,
                  'content': content.text
                }).whenComplete(() => Navigator.pop(context));
              },
              child: const Icon(Icons.check_outlined))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Container(
              height: 30,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Center(
                  child: TextField(
                    controller: title,
                    decoration: const InputDecoration(
                        hintText: "Title", isCollapsed: true),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: TextField(
                    controller: content,
                    maxLines: null,
                    expands: true,
                    decoration: const InputDecoration(
                        hintText: "Content", isCollapsed: true),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
