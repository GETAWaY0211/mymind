import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'profile.dart';
import 'detailassign1.dart';
import 'detailassign2.dart';

class Check extends StatefulWidget {
  static const routeName = '/check';

  const Check({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CheckState();
  }
}

class _CheckState extends State<Check> {
  var userOneDocumentRef1 = FirebaseFirestore.instance
      .collection(FirebaseAuth.instance.currentUser!.email!)
      .doc(DateFormat('dd MMM yyyy').format(DateTime.now()));
  var userOneDocumentRef2 = FirebaseFirestore.instance
      .collection(FirebaseAuth.instance.currentUser!.email!)
      .doc(DateFormat('MMM yyyy').format(DateTime.now()));
  void checkdoc() {}
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
          backgroundColor: const Color(0xffC6A7E4),
          centerTitle: true,
          title: const Text('Assessment'),
        ),
        body: Container(
            height: MediaQuery.of(context).size.height,
            color: const Color(0xffE4D9EF),
            child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Hero(
                        tag: 'assign1',
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 330,
                          child: Card(
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0)),
                            child: InkWell(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  child: Column(
                                    children: const [
                                      Text(
                                        'DAILY ASSESSMENT',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage('images/daily.png'))),
                                ),
                              ),
                              onTap: () {
                                userOneDocumentRef1.get().then((value) {
                                  if (value.exists == false) {
                                    userOneDocumentRef1.set({
                                      "Date": DateFormat('dd MMM yyyy')
                                          .format(DateTime.now())
                                    });
                                  }
                                  // ignore: avoid_print
                                  print(value.exists);
                                });
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const DetailPage1()));
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 330,
                        child: Card(
                          margin: const EdgeInsets.only(top: 10, bottom: 10),
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0)),
                          child: InkWell(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                child: Column(
                                  children: const [
                                    Text(
                                      'MONTHLY ASSESSMENT',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('images/month.png'))),
                              ),
                            ),
                            onTap: () {
                              userOneDocumentRef2.get().then((value) {
                                if (value.exists == false) {
                                  userOneDocumentRef2.set({
                                    "Date": DateFormat('dd MMM yyyy')
                                        .format(DateTime.now())
                                  });
                                }
                                // ignore: avoid_print
                                print(value.exists);
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DetailPage2()));
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ))));
  }
}
