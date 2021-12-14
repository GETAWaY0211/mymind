import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Editnote extends StatefulWidget {
  var docToEdit;
  Editnote({Key? key, required this.docToEdit}) : super(key: key);

  @override
  _EditnoteState createState() => _EditnoteState();
}

class _EditnoteState extends State<Editnote> {
  final ref = FirebaseFirestore.instance
      .collection(FirebaseAuth.instance.currentUser!.email!)
      .doc('Note')
      .collection('diary');

  TextEditingController title = TextEditingController();
  TextEditingController content = TextEditingController();

  // ignore: annotate_overrides
  void initState() {
    title = TextEditingController(text: widget.docToEdit.data()['title']);
    content = TextEditingController(text: widget.docToEdit.data()['content']);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xff26c6da), actions: [
        // ignore: deprecated_member_use
        Row(
          children: [
            // ignore: deprecated_member_use
            FlatButton(
                onPressed: () {
                  widget.docToEdit.reference.update({
                    'title': title.text,
                    'content': content.text,
                  }).whenComplete(() => Navigator.pop(context));
                },
                child: const Icon(
                  Icons.check_outlined,
                  size: 30,
                )),
            // ignore: deprecated_member_use
            FlatButton(
                onPressed: () {
                  widget.docToEdit.reference
                      .delete()
                      .whenComplete(() => Navigator.pop(context));
                },
                child: const Icon(
                  Icons.delete_forever_outlined,
                  size: 30,
                )),
          ],
        ),
        // ignore: deprecated_member_use
      ]),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Container(
              height: 30,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
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
                  padding: const EdgeInsets.all(10.0),
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
