import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Combat extends StatefulWidget {
  const Combat({Key? key}) : super(key: key);

  @override
  _CombatState createState() => _CombatState();
}

class _CombatState extends State<Combat> {
  get backgroundColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: const Text(
          "Good Nutrition",
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          decoration: (BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          )),
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: Text(
                      "     Whatever the reason, when we eat an unhealthy diet, we may experience short-term and long-term consequences. We may feel less energetic, and this lack of energy can affect our productivity and stress levels.\n",
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Text(
                    "We present tips for getting good nutrition.",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "- Eat Regularly",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "- Opt For Green Tea",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "- Try Sparkling Juice or Perrier",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "- Carry a Snack",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "- Healthy Munchies                                                    ",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "- Brown Bag It",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "- No Caffeine After 2 pm",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "- Stock Your Home With Healthy Fare",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "- Tension Tamers",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "\nlearn more ->",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: _launchURL,
                    child: Text(
                      "https://www.verywellmind.com/how-to-combat-stress-with-good-nutrition-3144529",
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

_launchURL() async {
  const url =
      'https://www.verywellmind.com/how-to-combat-stress-with-good-nutrition-3144529';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    // ignore: avoid_print
    print('Could not launch $url');
  }
}
