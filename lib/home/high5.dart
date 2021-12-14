import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class High extends StatefulWidget {
  const High({Key? key}) : super(key: key);

  @override
  _HighState createState() => _HighState();
}

class _HighState extends State<High> {
  get backgroundColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: const Text(
          "Is My Stress Level Too High?",
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
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: Center(
                      child: Text(
                        " Physical Signs\n",
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "- Pain or tension in your head, chest, stomach, or muscles. Your muscles tend to tense up or musculoskeletal problems.\n",
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
                    "- Digestive problems. These can include diarrhea and constipation, or nausea and vomiting.\n",
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
                    "- Problems with irregular or painful periods in women, you might also feel reduced sexual desire when you're under too much stress.\n",
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
                    "- Stress can cause inflammation in your arteries, which could be a contributing factor to heart attacks\n",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Mental and Emotional Signs",
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Text(
                    "- Depression or anxiety                                       ",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "- Anger, irritability, or restlessness                       ",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "- Feeling overwhelmed, unmotivated, or unfocused",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "- Trouble sleeping or sleeping too much                       ",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "- Racing thoughts or constant worry                       ",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "- Problems with your memory or concentration",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "- Making bad decisions                                      ",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "\nWhen to Get Help..!\nlearn more ->",
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
                      "https://www.webmd.com/balance/stress-management/stress-level-too-high",
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
      'https://www.cdc.gov/violenceprevention/about/copingwith-stresstips.html';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    // ignore: avoid_print
    print('Could not launch $url');
  }
}
