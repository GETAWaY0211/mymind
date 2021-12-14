import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:dart_random_choice/dart_random_choice.dart';
import 'dart:math';

class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  late DateTime _selectedDate;
  var userMonthlyRef = FirebaseFirestore.instance
      .collection(FirebaseAuth.instance.currentUser!.email!)
      .doc('Monthly');
  static const mood1 = [
    "You're someone's reason to smile.",
    "Being around you is like a happy little vacation.",
    "You have such charisma that is clearly inspiring to the people with whom you interact.",
    "Your positive attitude and healthy lifestyle are an inspiration.",
    "You always lift my mood with your positive energy.",
    "You’re more amazing than you will ever realize.",
    "Your positivity is infectious.",
    "You’re a true gift to the people in your life.",
    "Your smile makes me smile.",
    "The way you carry yourself is truly admirable."
  ];
  static const mood2 = [
    "You're stronger than you know.",
    "You'll be fine in no time.",
    "Take some time off and rest.",
    "Take it easy on yourself.",
    "Give yourself time to heal.",
    "Everything will fall into place.",
    "It’s OK to not feel OK.",
    "You don’t need to do anything that makes you uncomfortable",
    "I wish I could be there right now.",
    "Tomorrow will be easier. The next day will be even easier. And so on…"
  ];
  static const List<String> mood3 = [
    "Not every problem is worth stressing over.",
    "For every minute you are angry, you lose sixty seconds of happiness.",
    "Anger is a momentary madness, so control your passion or it will control you.",
    "Anger is a wind which blows out the lamp of the mind.",
    "Always write angry letters to your enemies. Never mail them.",
    "There are two things a person should never be angry at, what they can help, and what they cannot."
  ];
  static const mood4 = [
    "Face your fear if you can : Exposing yourself to your fears can be an effective way of overcoming this anxiety.",
    "Know yourself : Try to learn more about your fear or anxiety. Keep a record of when it happens and what happens. This can be an effective way of addressing the underlying beliefs that are behind your anxiety.",
    "Exercise : This can take your mind off your fear and anxiety.",
    "Relax",
    "Healthy eating",
    "Avoid alcohol, or drink in moderation",
    "Complementary therapies : such as relaxation techniques, meditation, yoga, or t’ai chi",
    "Faith/spirituality : This can give you a way of feeling connected to something bigger than yourself."
  ];
  static const mood5 = [
    "Wow!!! You look so excited today. You can give me more details in your diary:)"
  ];
  static const mood6 = [
    "Oh! what's make you feel like that? If you don't like it, then let's not remember it. okay?"
  ];
  static const well = [
    "Your positive attitude and healthy lifestyle are an inspiration.",
    "The way you carry yourself is truly admirable.",
    "Being around you is like a happy little vacation.",
    "You’re more amazing than you will ever realize.",
    "Being around you is like a happy little vacation."
  ];
  static const marginal = [
    "You can change your life by changing what you whisper to yourself every day.",
    "Not a single human is totally immune to problems, challenges, or stress.",
    "Your personal success and happiness aren’t based on other people’s opinions.",
    "You can choose to be happy regardless of your circumstances.",
    "You don’t always get what you want, but you get what you need to grow.",
    "All you need is love. But a little chocolate now and then doesn't hurt."
  ];
  static const notwell = [
    "Breathe in and out slowly.",
    "You are capable, you are strong",
    "You’re going to make it through this.",
    "You’re a work of art and a work in progress… all at once.",
    "The rest is still unwritten.",
    "You will figure everything out, give yourself time.",
    "Hold on and stay strong. Always know I am here for you.",
    "I'm here for you day or night, no matter what!",
    "Remember it's OK to take a break <3",
    "It won't be like this forever!"
  ];
  static const notwellall = [
    "You’re not alone. I’m here for you during this tough time.",
    "It may be hard to believe right now, but the way you’re feeling will change.",
    "You are the strongest one I know, this too shall pass.",
    "Storms don’t last forever.",
    "It is okay to have bad days, you will sail through like a pro!",
    "You will figure everything out, give yourself time.",
    "I’m here for you during this difficult time.",
    "You are strong and capable.",
    "This all must be really hard for you.",
    "Be gentle with yourself. You’re doing your best."
  ];
  @override
  void initState() {
    super.initState();
    _resetSelectedDate();
  }

  void _resetSelectedDate() {
    _selectedDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE0EAFD),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: const Color(0xFF333A47),
              height: MediaQuery.of(context).size.height / 4,
              child: CalendarTimeline(
                showYears: true,
                initialDate: _selectedDate,
                firstDate: DateTime(2019, 12, 1),
                lastDate: DateTime.now().add(const Duration(days: 365)),
                onDateSelected: (date) {
                  setState(() {
                    _selectedDate = date!;
                  });
                },
                leftMargin: 20,
                monthColor: Colors.white70,
                dayColor: Colors.teal[200],
                dayNameColor: const Color(0xFF333A47),
                activeDayColor: Colors.white,
                activeBackgroundDayColor: Colors.redAccent[100],
                dotsColor: const Color(0xFF333A47),
                locale: 'en',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15, top: 25, right: 15, bottom: 15),
              child: Container(
                padding: const EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                  stream: FirebaseFirestore.instance
                      .collection(FirebaseAuth.instance.currentUser!.email!)
                      .snapshots(),
                  builder: (_, snapshot) {
                    if (snapshot.hasError) {
                      return Text('Error = ${snapshot.error}');
                    }

                    if (snapshot.hasData) {
                      final docs = snapshot.data!.docs;
                      String word1 = randomChoice<String>(mood1);
                      String word2 = randomChoice<String>(mood2);
                      String word3 = randomChoice<String>(mood3);
                      String word4 = randomChoice<String>(mood4);
                      String word5 = randomChoice<String>(mood5);
                      String word6 = randomChoice<String>(mood6);
                      String ass1 = randomChoice<String>(well);
                      String ass2 = randomChoice<String>(marginal);
                      String ass3 = randomChoice<String>(notwell);
                      String ass4 = randomChoice<String>(notwellall);
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: docs.length,
                        itemBuilder: (_, i) {
                          final data = docs[i].data();
                          String time1 =
                              DateFormat('dd MMM yyyy').format(_selectedDate);

                          if (time1 == data['Date']) {
                            if (data['Month'] == null) {
                              if (data['emoji'] == null) {
                                return Column(
                                  children: const [
                                    Text(
                                      'Daily',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontFamily: 'montserrat',
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'You haven\'t taken the assessment',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontFamily: 'montserrat',
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                );
                              }
                              if (data['emoji'] != null) {
                                if (data['mood'] == 'Happiness') {
                                  return Column(
                                    children: [
                                      const Text(
                                        'Daily',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        data['emoji'].toString(),
                                        style: const TextStyle(
                                            fontSize: 40,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        data['mood'].toString(),
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        word1,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  );
                                }
                                if (data['mood'] == 'Sadness') {
                                  return Column(
                                    children: [
                                      const Text(
                                        'Daily',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        data['emoji'].toString(),
                                        style: const TextStyle(
                                            fontSize: 40,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        data['mood'].toString(),
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        word2,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  );
                                }
                                if (data['mood'] == 'Anger') {
                                  return Column(
                                    children: [
                                      const Text(
                                        'Daily',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        data['emoji'].toString(),
                                        style: const TextStyle(
                                            fontSize: 40,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        data['mood'].toString(),
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        word3,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  );
                                }
                                if (data['mood'] == 'Fear') {
                                  return Column(
                                    children: [
                                      const Text(
                                        'Daily',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        data['emoji'].toString(),
                                        style: const TextStyle(
                                            fontSize: 40,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        data['mood'].toString(),
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        word4,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  );
                                }
                                if (data['mood'] == 'Excitement') {
                                  return Column(
                                    children: [
                                      const Text(
                                        'Daily',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        data['emoji'].toString(),
                                        style: const TextStyle(
                                            fontSize: 40,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        data['mood'].toString(),
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        word5,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  );
                                }
                                if (data['mood'] == 'Disgust') {
                                  return Column(
                                    children: [
                                      const Text(
                                        'Daily',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        data['emoji'].toString(),
                                        style: const TextStyle(
                                            fontSize: 40,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        data['mood'].toString(),
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        word6,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  );
                                }
                              }
                            }
                            if (data['Month'] != null) {
                              if (data['MonthlyScore'] == null) {
                                return Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Column(
                                    children: const [
                                      Text(
                                        'Monthly',
                                        style: TextStyle(
                                            fontSize: 30,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'You haven\'t taken the assessment',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontFamily: 'montserrat',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                );
                              }
                              if (data['MonthlyScore'] != null) {
                                if (data['MonthlyScore'] >= 76 &&
                                    data['MonthlyScore'] <= 110) {
                                  return Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Column(
                                      children: [
                                        const Text(
                                          'Monthly',
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontFamily: 'montserrat',
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          data['MonthlyScore'].toString() +
                                              ' points',
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'montserrat',
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Text(
                                          'Coping well',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15,
                                              fontFamily: 'montserrat',
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          ass1,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontFamily: 'montserrat',
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                                if (data['MonthlyScore'] >= 71 &&
                                    data['MonthlyScore'] <= 75) {
                                  return Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Column(
                                      children: [
                                        const Text(
                                          'Monthly',
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontFamily: 'montserrat',
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          data['MonthlyScore'].toString() +
                                              ' points',
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'montserrat',
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Text(
                                          'Marginal',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15,
                                              fontFamily: 'montserrat',
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          ass2,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontFamily: 'montserrat',
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                                if (data['MonthlyScore'] >= 56 &&
                                    data['MonthlyScore'] <= 70) {
                                  return Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Column(
                                      children: [
                                        const Text(
                                          'Monthly',
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontFamily: 'montserrat',
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          data['MonthlyScore'].toString() +
                                              ' points',
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'montserrat',
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Text(
                                          'Not coping very well',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15,
                                              fontFamily: 'montserrat',
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          ass3,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontFamily: 'montserrat',
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                                if (data['MonthlyScore'] >= 0 &&
                                    data['MonthlyScore'] <= 55) {
                                  return Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Column(
                                      children: [
                                        const Text(
                                          'Monthly',
                                          style: TextStyle(
                                              fontSize: 30,
                                              fontFamily: 'montserrat',
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          data['MonthlyScore'].toString() +
                                              ' points',
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'montserrat',
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Text(
                                          'Not coping well at all',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15,
                                              fontFamily: 'montserrat',
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Text(
                                            ass4,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'montserrat',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                              }
                            }
                          }
                          return const Padding(padding: EdgeInsets.all(0));
                        },
                      );
                    }

                    return const Center(child: CircularProgressIndicator());
                  },
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
