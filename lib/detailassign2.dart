import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:emotion/launcher.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'check.dart';
import 'data.dart';

class DetailPage2 extends StatefulWidget {
  const DetailPage2({Key? key}) : super(key: key);

  @override
  _DetailPage2State createState() => _DetailPage2State();
}

class _DetailPage2State extends State<DetailPage2> {
  int total = 0;
  int ch = 0;
  var q = [
    11,
    11,
    11,
    11,
    11,
    11,
    11,
    11,
    11,
    11,
    11,
    11,
    11,
    11,
    11,
    11,
    11,
    11
  ];
  var userMonthlyRef = FirebaseFirestore.instance
      .collection(FirebaseAuth.instance.currentUser!.email!)
      .doc(DateFormat('MMM yyyy').format(DateTime.now()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: const Color(0xffE4D9EF),
          title: Text(
            DateFormat('dd MMM yyyy').format(DateTime.now()),
            style: const TextStyle(
                fontSize: 30, color: Colors.black, fontFamily: 'Montserrat'),
          )),
      backgroundColor: const Color(0xffE4D9EF),
      body: SafeArea(
          child: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 240,
                      color: const Color(0xffE4D9EF),
                      child: const Center(
                        child: Text(
                          'Question',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      color: const Color(0xffE4D9EF),
                      child: Center(
                        child: Column(
                          children: const [
                            Text(
                              '5',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'good',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      color: const Color(0xffE4D9EF),
                      child: const Center(
                        child: Text(
                          '4\n',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      color: const Color(0xffE4D9EF),
                      child: const Center(
                        child: Text(
                          '3\n',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      color: const Color(0xffE4D9EF),
                      child: const Center(
                        child: Text(
                          '2\n',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      color: const Color(0xffE4D9EF),
                      child: const Center(
                        child: Text(
                          '1\n',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      color: const Color(0xffE4D9EF),
                      child: Center(
                        child: Column(
                          children: const [
                            Text(
                              '0',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'bad',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 240,
                      color: const Color(0xffE4D9EF),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
                        child: Text(
                          '1. How have you been feeling in general?',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 5,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[0],
                        onChanged: (value) {
                          setState(() {
                            q[0] = 5;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 4,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[0],
                        onChanged: (value) {
                          setState(() {
                            q[0] = 4;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 3,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[0],
                        onChanged: (value) {
                          setState(() {
                            q[0] = 3;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 2,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[0],
                        onChanged: (value) {
                          setState(() {
                            q[0] = 2;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 1,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[0],
                        onChanged: (value) {
                          setState(() {
                            q[0] = 1;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 0,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[0],
                        onChanged: (value) {
                          setState(() {
                            q[0] = 0;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 240,
                      color: const Color(0xffE4D9EF),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
                        child: Text(
                          '2. Have you been bothered by nervousness?',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 5,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[1],
                        onChanged: (value) {
                          setState(() {
                            q[1] = 5;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 4,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[1],
                        onChanged: (value) {
                          setState(() {
                            q[1] = 4;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 3,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[1],
                        onChanged: (value) {
                          setState(() {
                            q[1] = 3;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 2,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[1],
                        onChanged: (value) {
                          setState(() {
                            q[1] = 2;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 1,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[1],
                        onChanged: (value) {
                          setState(() {
                            q[1] = 1;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 0,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[1],
                        onChanged: (value) {
                          setState(() {
                            q[1] = 0;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 240,
                      color: const Color(0xffE4D9EF),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
                        child: Text(
                          '3. Have you been in firm control of your behavior, thoughts, emotions, and feelings?',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 5,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[2],
                        onChanged: (value) {
                          setState(() {
                            q[2] = 5;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 4,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[2],
                        onChanged: (value) {
                          setState(() {
                            q[2] = 4;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 3,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[2],
                        onChanged: (value) {
                          setState(() {
                            q[2] = 3;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 2,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[2],
                        onChanged: (value) {
                          setState(() {
                            q[2] = 2;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 1,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[2],
                        onChanged: (value) {
                          setState(() {
                            q[2] = 1;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 0,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[2],
                        onChanged: (value) {
                          setState(() {
                            q[2] = 0;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 240,
                      color: const Color(0xffE4D9EF),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
                        child: Text(
                          '4. Have you been feeling so sad, discouraged, or hopeless, or had so many problems that you wondered if anything was worthwhile?',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 5,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[3],
                        onChanged: (value) {
                          setState(() {
                            q[3] = 5;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 4,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[3],
                        onChanged: (value) {
                          setState(() {
                            q[3] = 4;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 3,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[3],
                        onChanged: (value) {
                          setState(() {
                            q[3] = 3;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 2,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[3],
                        onChanged: (value) {
                          setState(() {
                            q[3] = 2;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 1,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[3],
                        onChanged: (value) {
                          setState(() {
                            q[3] = 1;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 0,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[3],
                        onChanged: (value) {
                          setState(() {
                            q[3] = 0;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 240,
                      color: const Color(0xffE4D9EF),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
                        child: Text(
                          '5. Have you been feeling that you were under any strain, stress, or pressure?',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 5,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[4],
                        onChanged: (value) {
                          setState(() {
                            q[4] = 5;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 4,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[4],
                        onChanged: (value) {
                          setState(() {
                            q[4] = 4;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 3,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[4],
                        onChanged: (value) {
                          setState(() {
                            q[4] = 3;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 2,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[4],
                        onChanged: (value) {
                          setState(() {
                            q[4] = 2;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 1,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[4],
                        onChanged: (value) {
                          setState(() {
                            q[4] = 1;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 0,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[4],
                        onChanged: (value) {
                          setState(() {
                            q[4] = 0;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 240,
                      color: const Color(0xffE4D9EF),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
                        child: Text(
                          '6. How happy or satisfied have you been with your personal life?',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 5,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[5],
                        onChanged: (value) {
                          setState(() {
                            q[5] = 5;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 4,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[5],
                        onChanged: (value) {
                          setState(() {
                            q[5] = 4;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 3,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[5],
                        onChanged: (value) {
                          setState(() {
                            q[5] = 3;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 2,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[5],
                        onChanged: (value) {
                          setState(() {
                            q[5] = 2;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 1,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[5],
                        onChanged: (value) {
                          setState(() {
                            q[5] = 1;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 0,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[5],
                        onChanged: (value) {
                          setState(() {
                            q[5] = 0;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 240,
                      color: const Color(0xffE4D9EF),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
                        child: Text(
                          '7. Have you had any reason to wonder if you were losing your mind or memory, or losing control over the way you act, talk, think, or feel?',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 5,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[6],
                        onChanged: (value) {
                          setState(() {
                            q[6] = 5;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 4,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[6],
                        onChanged: (value) {
                          setState(() {
                            q[6] = 4;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 3,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[6],
                        onChanged: (value) {
                          setState(() {
                            q[6] = 3;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 2,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[6],
                        onChanged: (value) {
                          setState(() {
                            q[6] = 2;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 1,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[6],
                        onChanged: (value) {
                          setState(() {
                            q[6] = 1;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 0,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[6],
                        onChanged: (value) {
                          setState(() {
                            q[6] = 0;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 240,
                      color: const Color(0xffE4D9EF),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
                        child: Text(
                          '8. Have you been anxious, worried, or upset?',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 5,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[7],
                        onChanged: (value) {
                          setState(() {
                            q[7] = 5;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 4,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[7],
                        onChanged: (value) {
                          setState(() {
                            q[7] = 4;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 3,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[7],
                        onChanged: (value) {
                          setState(() {
                            q[7] = 3;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 2,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[7],
                        onChanged: (value) {
                          setState(() {
                            q[7] = 2;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 1,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[7],
                        onChanged: (value) {
                          setState(() {
                            q[7] = 1;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 0,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[7],
                        onChanged: (value) {
                          setState(() {
                            q[7] = 0;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 240,
                      color: const Color(0xffE4D9EF),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
                        child: Text(
                          '9. How often have you awakened refreshed and rested?',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 5,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[8],
                        onChanged: (value) {
                          setState(() {
                            q[8] = 5;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 4,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[8],
                        onChanged: (value) {
                          setState(() {
                            q[8] = 4;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 3,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[8],
                        onChanged: (value) {
                          setState(() {
                            q[8] = 3;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 2,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[8],
                        onChanged: (value) {
                          setState(() {
                            q[8] = 2;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 1,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[8],
                        onChanged: (value) {
                          setState(() {
                            q[8] = 1;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 0,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[8],
                        onChanged: (value) {
                          setState(() {
                            q[8] = 0;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 240,
                      color: const Color(0xffE4D9EF),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
                        child: Text(
                          '10. Have you been bothered by an illness, bodily disorder, pain, or fear about your health?',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 5,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[9],
                        onChanged: (value) {
                          setState(() {
                            q[9] = 5;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 4,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[9],
                        onChanged: (value) {
                          setState(() {
                            q[9] = 4;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 3,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[9],
                        onChanged: (value) {
                          setState(() {
                            q[9] = 3;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 2,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[9],
                        onChanged: (value) {
                          setState(() {
                            q[9] = 2;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 1,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[9],
                        onChanged: (value) {
                          setState(() {
                            q[9] = 1;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 0,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[9],
                        onChanged: (value) {
                          setState(() {
                            q[9] = 0;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 240,
                      color: const Color(0xffE4D9EF),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
                        child: Text(
                          '11. Has your daily life been full of things that were interesting to you?',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 5,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[10],
                        onChanged: (value) {
                          setState(() {
                            q[10] = 5;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 4,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[10],
                        onChanged: (value) {
                          setState(() {
                            q[10] = 4;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 3,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[10],
                        onChanged: (value) {
                          setState(() {
                            q[10] = 3;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 2,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[10],
                        onChanged: (value) {
                          setState(() {
                            q[10] = 2;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 1,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[10],
                        onChanged: (value) {
                          setState(() {
                            q[10] = 1;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 0,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[10],
                        onChanged: (value) {
                          setState(() {
                            q[10] = 0;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 240,
                      color: const Color(0xffE4D9EF),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
                        child: Text(
                          '12. Have you been feeling down-hearted and blue?',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 5,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[11],
                        onChanged: (value) {
                          setState(() {
                            q[11] = 5;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 4,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[11],
                        onChanged: (value) {
                          setState(() {
                            q[11] = 4;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 3,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[11],
                        onChanged: (value) {
                          setState(() {
                            q[11] = 3;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 2,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[11],
                        onChanged: (value) {
                          setState(() {
                            q[11] = 2;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 1,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[11],
                        onChanged: (value) {
                          setState(() {
                            q[11] = 1;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 0,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[11],
                        onChanged: (value) {
                          setState(() {
                            q[11] = 0;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 240,
                      color: const Color(0xffE4D9EF),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
                        child: Text(
                          '13. Have you been feeling emotionally stable and sure of yourself?',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 5,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[12],
                        onChanged: (value) {
                          setState(() {
                            q[12] = 5;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 4,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[12],
                        onChanged: (value) {
                          setState(() {
                            q[12] = 4;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 3,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[12],
                        onChanged: (value) {
                          setState(() {
                            q[12] = 3;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 2,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[12],
                        onChanged: (value) {
                          setState(() {
                            q[12] = 2;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 1,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[12],
                        onChanged: (value) {
                          setState(() {
                            q[12] = 1;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 0,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[12],
                        onChanged: (value) {
                          setState(() {
                            q[12] = 0;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 240,
                      color: const Color(0xffE4D9EF),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
                        child: Text(
                          '14. Have you been feeling tired, worn out, used-up, or exhausted?',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 5,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[13],
                        onChanged: (value) {
                          setState(() {
                            q[13] = 5;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 4,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[13],
                        onChanged: (value) {
                          setState(() {
                            q[13] = 4;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 3,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[13],
                        onChanged: (value) {
                          setState(() {
                            q[13] = 3;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 2,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[13],
                        onChanged: (value) {
                          setState(() {
                            q[13] = 2;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 1,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[13],
                        onChanged: (value) {
                          setState(() {
                            q[13] = 1;
                          });
                        },
                      ),
                    ),
                    Container(
                      width: 40,
                      color: Colors.white38,
                      child: Radio(
                        value: 0,
                        activeColor: Colors.deepPurpleAccent,
                        groupValue: q[13],
                        onChanged: (value) {
                          setState(() {
                            q[13] = 0;
                          });
                        },
                      ),
                    ),
                  ],
                ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xffE4D9EF),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
                    child: Text(
                      '15. How concerned or worried have you been about your health?',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '10',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'good',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 10,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[14],
                              onChanged: (value) {
                                setState(() {
                                  q[14] = 10;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '9',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 9,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[14],
                              onChanged: (value) {
                                setState(() {
                                  q[14] = 9;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '8',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 8,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[14],
                              onChanged: (value) {
                                setState(() {
                                  q[14] = 8;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '7',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 7,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[14],
                              onChanged: (value) {
                                setState(() {
                                  q[14] = 7;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '6',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 6,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[14],
                              onChanged: (value) {
                                setState(() {
                                  q[14] = 6;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '5',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 5,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[14],
                              onChanged: (value) {
                                setState(() {
                                  q[14] = 5;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '4',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 4,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[14],
                              onChanged: (value) {
                                setState(() {
                                  q[14] = 4;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '3',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 3,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[14],
                              onChanged: (value) {
                                setState(() {
                                  q[14] = 3;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '2',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 2,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[14],
                              onChanged: (value) {
                                setState(() {
                                  q[14] = 2;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '1',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 1,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[14],
                              onChanged: (value) {
                                setState(() {
                                  q[14] = 1;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '0',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'bad',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 0,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[14],
                              onChanged: (value) {
                                setState(() {
                                  q[14] = 0;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xffE4D9EF),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
                    child: Text(
                      '16. How relaxed or tense have you been?',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '10',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'good',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 10,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[15],
                              onChanged: (value) {
                                setState(() {
                                  q[15] = 10;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '9',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 9,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[15],
                              onChanged: (value) {
                                setState(() {
                                  q[15] = 9;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '8',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 8,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[15],
                              onChanged: (value) {
                                setState(() {
                                  q[15] = 8;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '7',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 7,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[15],
                              onChanged: (value) {
                                setState(() {
                                  q[15] = 7;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '6',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 6,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[15],
                              onChanged: (value) {
                                setState(() {
                                  q[15] = 6;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '5',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 5,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[15],
                              onChanged: (value) {
                                setState(() {
                                  q[15] = 5;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '4',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 4,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[15],
                              onChanged: (value) {
                                setState(() {
                                  q[15] = 4;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '3',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 3,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[15],
                              onChanged: (value) {
                                setState(() {
                                  q[15] = 3;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '2',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 2,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[15],
                              onChanged: (value) {
                                setState(() {
                                  q[15] = 2;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '1',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 1,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[15],
                              onChanged: (value) {
                                setState(() {
                                  q[15] = 1;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '0',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'bad',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 0,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[15],
                              onChanged: (value) {
                                setState(() {
                                  q[15] = 0;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xffE4D9EF),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
                    child: Text(
                      '17. How much energy, pep, or vitality have you had?',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '10',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'good',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 10,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[16],
                              onChanged: (value) {
                                setState(() {
                                  q[16] = 10;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '9',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 9,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[16],
                              onChanged: (value) {
                                setState(() {
                                  q[16] = 9;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '8',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 8,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[16],
                              onChanged: (value) {
                                setState(() {
                                  q[16] = 8;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '7',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 7,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[16],
                              onChanged: (value) {
                                setState(() {
                                  q[16] = 7;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '6',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 6,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[16],
                              onChanged: (value) {
                                setState(() {
                                  q[16] = 6;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '5',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 5,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[16],
                              onChanged: (value) {
                                setState(() {
                                  q[16] = 5;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '4',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 4,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[16],
                              onChanged: (value) {
                                setState(() {
                                  q[16] = 4;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '3',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 3,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[16],
                              onChanged: (value) {
                                setState(() {
                                  q[16] = 3;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '2',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 2,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[16],
                              onChanged: (value) {
                                setState(() {
                                  q[16] = 2;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '1',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 1,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[16],
                              onChanged: (value) {
                                setState(() {
                                  q[16] = 1;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '0',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'bad',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 0,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[16],
                              onChanged: (value) {
                                setState(() {
                                  q[16] = 0;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xffE4D9EF),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 5, top: 10, bottom: 10),
                    child: Text(
                      '18. How depressed or cheerful have you been?',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '10',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'good',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 10,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[17],
                              onChanged: (value) {
                                setState(() {
                                  q[17] = 10;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '9',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 9,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[17],
                              onChanged: (value) {
                                setState(() {
                                  q[17] = 9;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '8',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 8,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[17],
                              onChanged: (value) {
                                setState(() {
                                  q[17] = 8;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '7',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 7,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[17],
                              onChanged: (value) {
                                setState(() {
                                  q[17] = 7;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '6',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 6,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[17],
                              onChanged: (value) {
                                setState(() {
                                  q[17] = 6;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '5',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 5,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[17],
                              onChanged: (value) {
                                setState(() {
                                  q[17] = 5;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '4',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 4,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[17],
                              onChanged: (value) {
                                setState(() {
                                  q[17] = 4;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '3',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 3,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[17],
                              onChanged: (value) {
                                setState(() {
                                  q[17] = 3;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '2',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 2,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[17],
                              onChanged: (value) {
                                setState(() {
                                  q[17] = 2;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '1',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              '',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 1,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[17],
                              onChanged: (value) {
                                setState(() {
                                  q[17] = 1;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 37.4,
                        color: Colors.white38,
                        child: Column(
                          children: [
                            const Text(
                              '0',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'bad',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Radio(
                              value: 0,
                              activeColor: Colors.deepPurpleAccent,
                              groupValue: q[17],
                              onChanged: (value) {
                                setState(() {
                                  q[17] = 0;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // ignore: sized_box_for_whitespace
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffC6A7E4),
                      ),
                      child: TextButton(
                          onPressed: () {
                            for (int i = 0; i < 18; i++) {
                              if (q[i] != 11) {
                                ch += 1;
                              }
                            }
                            // ignore: avoid_print
                            print(ch);
                            if (ch == 18) {
                              for (int j = 0; j < 18; j++) {
                                total += q[j];
                                // ignore: avoid_print
                                print(total);
                              }
                              userMonthlyRef.update({
                                'MonthlyScore': total,
                                'Date': DateFormat('dd MMM yyyy')
                                    .format(DateTime.now())
                              });
                              showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                          title: const Text(
                                            'Answer has been saved',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 30),
                                          ),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () =>
                                                  Navigator.pushAndRemoveUntil(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const Launcher()),
                                                      ModalRoute.withName(
                                                          '/launcher')),
                                              child: const Text(
                                                'OK',
                                                style: TextStyle(fontSize: 20),
                                              ),
                                            )
                                          ]));
                            } else {
                              showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                          title: const Text(
                                            'Unable to save answers',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 30),
                                          ),
                                          content: const Text(
                                              'Could you please answer all questions'),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () =>
                                                  Navigator.pop(context, 'OK'),
                                              child: const Text(
                                                'OK',
                                                style: TextStyle(fontSize: 20),
                                              ),
                                            )
                                          ]));
                            }
                            ch = 0;
                            total = 0;
                          },
                          child: const Text(
                            'submit',
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          )),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
