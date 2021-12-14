import 'package:emotion/changepassword.dart';
import 'package:emotion/deletedata.dart';
import 'package:emotion/presign.dart';
import 'package:flutter/material.dart';
import 'presign.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Profile"),
        backgroundColor: const Color(0xffFCBC38),
      ),
      body: Container(
        color: const Color(0xffFFF1C4),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              child: Text(
                auth.currentUser!.email!,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.login_outlined,
                color: Colors.black,
                size: 30,
              ),
              title: const Text(
                'Log Out',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              selectedTileColor: Colors.white,
              onTap: () {
                auth.signOut().then((value) {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const PreSign()),
                      ModalRoute.withName('/'));
                });
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.change_circle_outlined,
                color: Colors.black,
                size: 30,
              ),
              title: const Text(
                'Change Password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              selectedTileColor: Colors.white,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChangePassword()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.delete_forever_outlined,
                color: Colors.black,
                size: 30,
              ),
              title: const Text(
                'Delete Account',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              selectedTileColor: Colors.white,
              onTap: () {
                showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                            title: Column(
                              children: const [
                                Text(
                                  '❗️',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 60),
                                ),
                                Text(
                                  'Warning',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 40, color: Colors.red),
                                ),
                                Text(
                                  'All data will be deleted',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.red),
                                ),
                              ],
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text(
                                  'Cancel',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  deleteAll();
                                  try {
                                    FirebaseAuth.instance.currentUser!.delete();
                                  } on FirebaseAuthException catch (e) {
                                    if (e.code == 'requires-recent-login') {
                                      // ignore: avoid_print
                                      print(
                                          'The user must reauthenticate before this operation can be executed.');
                                    }
                                  }
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const PreSign()),
                                      ModalRoute.withName('/'));
                                },
                                child: const Text(
                                  'Accept',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.red),
                                ),
                              ),
                            ]));
              },
            ),
          ],
        ),
      ),
    );
  }
}
