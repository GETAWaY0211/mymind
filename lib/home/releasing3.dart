import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Releasing extends StatefulWidget {
  const Releasing({Key? key}) : super(key: key);

  @override
  _ReleasingState createState() => _ReleasingState();
}

class _ReleasingState extends State<Releasing> {
  get backgroundColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: const Text(
          "Music",
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
                  Text(
                    "     Current findings indicate that music around 60 beats per minute can cause the brain to relax and be conscious. To induce sleep, a person may need to devote at least 45 minutes, in a relaxed position, listening to calming music.\n",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "     Listening to music seems to be able to change brain functioning to the same extent as medication. makes it an easy stress reduction tool.\n",
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
                    "     The links below each open relaxing musical selections on YouTube.",
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
                    "\nMusic: A Moment of Peace Meditation >",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: _launchURL1,
                    child: Text(
                      "https://www.youtube.com/watch?v=xINL9068Yvg",
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Text(
                    "Aneal & Bradfield, 'Heaven and Earth Spirits' track from Life & Love). Lovely contemporary piano music with accompanying instruments and nature scenes.",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "\nMusic: Echoes of Time >",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: _launchURL2,
                    child: Text(
                      "https://www.youtube.com/watch?v=MQYweHL9chg",
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
                    "C. Carlos Nakai from the Canyon Trilogy. Serene Native American flute music, with a picture of Nakai backlit by the sun at the Grand Canyon.",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),

                  Text(
                    "\nMusic: The Winding Path >",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  // ignore: deprecated_member_use
                  FlatButton(
                    onPressed: _launchURL3,
                    child: Text(
                      "https://www.youtube.com/watch?v=sGUTu2IEUiQ",
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
                    "Ken Kern from The Winding Path. Highly rated, beautiful piano music with accompanying instruments with pictures of exquisite flowers and plants.",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "\nMore music options...\nlearn more ->",
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  // ignore: deprecated_member_use
                  FlatButton(
                    onPressed: _launchURL4,
                    child: Text(
                      "https://www.unr.edu/counseling/virtual-relaxation-room/releasing-stress-through-the-power-of-music",
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

_launchURL1() async {
  const url = 'https://www.youtube.com/watch?v=xINL9068Yvg';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    // ignore: avoid_print
    print('Could not launch $url');
  }
}

_launchURL2() async {
  const url = 'https://www.youtube.com/watch?v=MQYweHL9chg';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    // ignore: avoid_print
    print('Could not launch $url');
  }
}

_launchURL3() async {
  const url = 'https://www.youtube.com/watch?v=sGUTu2IEUiQ';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    // ignore: avoid_print
    print('Could not launch $url');
  }
}

_launchURL4() async {
  const url =
      'https://www.unr.edu/counseling/virtual-relaxation-room/releasing-stress-through-the-power-of-music';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    // ignore: avoid_print
    print('Could not launch $url');
  }
}
