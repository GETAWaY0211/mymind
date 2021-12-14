import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:intl/intl.dart';

class ToDo extends StatefulWidget {
  const ToDo({Key? key}) : super(key: key);

  @override
  _ToDoState createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  List todos = [];
  String input = "";

  createTodos() {
    var todoref = FirebaseFirestore.instance
        .collection(FirebaseAuth.instance.currentUser!.email!)
        .doc(DateFormat('dd MMM yyyy').format(DateTime.now()))
        .collection('Todo')
        .doc(DateFormat('dd MMM yyyy HH:mm:ss').format(DateTime.now()));

    //Map
    Map<String, String> todos = {
      "todoTitle": input,
    };

    todoref.set(todos).whenComplete(() {
      // ignore: avoid_print
      print("$input created");
    });
  }

  deleteTodos() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To-Do List"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.teal[50],
        child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: FirebaseFirestore.instance
              .collection(FirebaseAuth.instance.currentUser!.email!)
              .doc(DateFormat('dd MMM yyyy').format(DateTime.now()))
              .collection('Todo')
              .snapshots(),
          builder: (_, snapshot) {
            if (snapshot.hasError) {
              return Text('Error = ${snapshot.error}');
            }

            if (snapshot.hasData) {
              final docs = snapshot.data!.docs;
              return ListView.builder(
                shrinkWrap: true,
                itemCount: docs.length,
                itemBuilder: (_, i) {
                  final data = docs[i].data();
                  return Dismissible(
                      key: Key(i.toString()),
                      child: Card(
                        elevation: 4,
                        margin: const EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: ListTile(
                          title: Text(data["todoTitle"]),
                          trailing: IconButton(
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              final collection = FirebaseFirestore.instance
                                  .collection(FirebaseAuth
                                      .instance.currentUser!.email!);
                              collection
                                  .doc(DateFormat('dd MMM yyyy')
                                      .format(DateTime.now()))
                                  .collection('Todo')
                                  .doc(docs[i]
                                      .reference
                                      .id) // <-- Doc ID to be deleted.
                                  .delete() // <-- Delete
                                  // ignore: avoid_print
                                  .then((_) => print('Deleted'))
                                  // ignore: avoid_print
                                  .catchError(
                                      // ignore: avoid_print
                                      (error) =>
                                          print('Delete failed: $error'));
                            },
                          ),
                        ),
                      ));
                },
              );
            }

            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  title: const Text("Add Todolist"),
                  content: TextField(
                    onChanged: (String value) {
                      input = value;
                    },
                  ),
                  actions: <Widget>[
                    // ignore: deprecated_member_use
                    FlatButton(
                        onPressed: () {
                          createTodos();
                          Navigator.of(context).pop();
                        },
                        child: const Text("Add"))
                  ],
                );
              });
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
