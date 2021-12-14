import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Healthy extends StatefulWidget {
  const Healthy({Key? key}) : super(key: key);

  @override
  _HealthyState createState() => _HealthyState();
}

class _HealthyState extends State<Healthy> {
  get backgroundColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: const Text(
          "Healthy Ways to Cope with Stress",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
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
                      "- Take breaks from watching, reading, or listening to news stories, including those on social media. It's good to be informed but hearing about the traumatic event constantly can be upsetting. Consider limiting news to just a couple of times a day and disconnecting from phone, tv, and computer screens for a while.\n",
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "- Take care of yourself. Eat healthy, exercise, get plenty of sleep, and give yourself a break if you feel stressed out. \n",
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "- Take care of your body. Take deep breaths, stretch, or meditateexternal icon. Try to eat healthy, well-balanced meals. Exercise regularly. Get plenty of sleep. Avoid excessive alcohol, tobacco, and substance use.\n",
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "- Make time to unwind. Try to do some other activities you enjoy.\n",
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "- Talk to others. Talk with peopleexternal icon you trust about your concerns and how you are feeling. Share your problems and how you are feeling and coping with a parent, friend, counselor, doctor, or pastor.\n",
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "- Avoid drugs and alcohol. These may seem to help, but they can create additional problems and increase the stress you are already feeling.\n",
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "- Recognize when you need more help. If problems continue or you are thinking about suicide, talk to a psychologist, social worker, or professional counselor.\n",
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Tips for Helping Others Cope...\nlearn more ->",
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
                        "https://www.cdc.gov/violenceprevention/about/copingwith-stresstips.html",
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
