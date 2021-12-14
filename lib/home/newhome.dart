import 'package:flutter/material.dart';
import 'combat4.dart';
import 'healthy1.dart';
import 'high5.dart';
import 'releasing3.dart';
import 'things2.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFDE6EC),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// 1
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Healthy();
                    }));
                  },
                  splashColor: Colors.white.withOpacity(0.5),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: 270,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: const [
                            Text(
                              "Healthy Ways to Cope with Stress",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: const DecorationImage(
                            image: AssetImage('images/image-1.jpg')),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              ///2
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Things();
                    }));
                  },
                  splashColor: Colors.white.withOpacity(0.5),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: 290,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "10 Things to Stop Doing",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Text(
                            "If You're Stressed",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: const DecorationImage(
                            alignment: Alignment.bottomCenter,
                            image: AssetImage('images/image-2.jpg')),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              ///3
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Releasing();
                    }));
                  },
                  splashColor: Colors.white.withOpacity(0.5),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: 290,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "Releasing stress through",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Text(
                            "the power of music",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: const DecorationImage(
                            alignment: Alignment.bottomCenter,
                            image: AssetImage('images/image-3.jpg')),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              ///4
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Combat();
                    }));
                  },
                  splashColor: Colors.white.withOpacity(0.5),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: 290,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "How to Combat Stress",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Text(
                            "with Good Nutrition",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: const DecorationImage(
                            alignment: Alignment.bottomCenter,
                            image: AssetImage('images/image-4.jpg')),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              ///5
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const High();
                    }));
                  },
                  splashColor: Colors.white.withOpacity(0.5),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Container(
                      height: 270,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "Is My Stress Level Too High?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: const DecorationImage(
                            image: AssetImage('images/image-5.jpg')),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
