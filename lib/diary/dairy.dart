import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'addnote.dart';
import 'editnote.dart';
import 'package:flutter/material.dart';

class Dairy extends StatefulWidget {
  final ref = FirebaseFirestore.instance
      .collection(FirebaseAuth.instance.currentUser!.email!)
      .doc('Note')
      .collection('diary');

  Dairy({Key? key}) : super(key: key);

  @override
  _DairyState createState() => _DairyState();
}

class _DairyState extends State<Dairy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[400],
        title: (const Text("Diary")),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff26c6da),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const Addnote()));
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: Container(
        color: Colors.cyan[50],
        child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
            stream: FirebaseFirestore.instance
                .collection(FirebaseAuth.instance.currentUser!.email!)
                .doc('Note')
                .collection('diary')
                .snapshots(),
            builder: (_, snapshot) {
              return ListView.builder(
                  reverse: true,
                  itemCount: snapshot.hasData ? snapshot.data?.docs.length : 0,
                  itemBuilder: (_, i) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => Editnote(
                                    docToEdit: snapshot.data!.docs[i])));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  margin:
                                      const EdgeInsets.only(top: 10, left: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: Text(
                                        snapshot.data?.docs[i].data()['time'],
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              width: MediaQuery.of(context).size.width,
                              height: 150,
                              margin: const EdgeInsets.all(10),
                              child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Text(
                                          snapshot.data?.docs[i]
                                              .data()['title'],
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(snapshot.data?.docs[i]
                                            .data()['content']),
                                      ],
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            }),
      ),
    );
  }
}
