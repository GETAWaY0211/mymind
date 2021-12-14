import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Things extends StatefulWidget {
  const Things({Key? key}) : super(key: key);

  @override
  _ThingsState createState() => _ThingsState();
}

class _ThingsState extends State<Things> {
  get backgroundColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: const Text(
          "10 Things to Stop Doing If You're Stressed",
          style: TextStyle(fontSize: 16),
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
                  Text(
                    "     Many of the stressors we face in life are not under our control. Therefore, it's wise to look at what we can control, stop doing things that perpetuate and exacerbate our stress levels, and focus on what we can do to help ourselves feel more relaxed.\n",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    " 1. Stop Ruminating",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    " 2. Stop Losing Sleep ",
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
                    " 3. Stop Eating Junk",
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
                    " 4. Stop Leaning on Frenemies ",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    " 5. Stop Overloading Your Schedule ",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    " 6. Stop Your Cognitive Distortions",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    " 7. Stop Putting Off Exercise",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    " 8. Stop Negativity",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    " 9. Stop Missing Opportunities",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    " 10. Don't Ignore Your Stress",
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
                      "https://www.verywellmind.com/dealing-with-stress-10-things-to-stop-doing-3145265",
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
      'https://www.verywellmind.com/dealing-with-stress-10-things-to-stop-doing-3145265';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    // ignore: avoid_print
    print('Could not launch $url');
  }
}
