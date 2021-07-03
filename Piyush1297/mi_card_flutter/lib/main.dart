import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

//function to make a CALL
_makingPhoneCall() async {
  const url = 'tel:8340524577';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchGithubApp() async {
  const url = 'https://github.com/piyush1297';
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}

_gimmepdf() async {
  const url =
      'https://drive.google.com/file/d/1RL9-zf3vqdT5XNXVnI1tSOMuXH9ErfTk/view?usp=sharing';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchLinkedApp() async {
  const url = 'https://www.linkedin.com/in/1piyushkumar/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_mailme() async {
  const url = 'mailto:piyushkumar2738@gmail.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            maintainBottomViewPadding: true,
            child: Column(children: <Widget>[
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 80),
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white70,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black87.withOpacity(0.6),
                      spreadRadius: 8,
                      blurRadius: 15,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 80.0,
                      child: ClipRRect(
                        child: Image.asset('images/pp.jpg'),
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Piyush Kumar",
                        style: TextStyle(
                          fontSize: 35.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          "Web Developer",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          " ",
                        ),
                        Text(
                          "I have joined the course to learn the basics of Flutter",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          " ",
                        ),
                      ],
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: _gimmepdf,
                            child: Text(
                              "My Resume",
                            ),
                          ),
                          Container(
                            height: 25.0,
                          ),
                          ElevatedButton(
                            onPressed: _makingPhoneCall,
                            child: Text('My Phone Number'),
                          ),
                          Container(
                            height: 25.0,
                          ),
                          ElevatedButton(
                            onPressed: _mailme,
                            child: Text(
                              "My Email",
                            ),
                          ),
                          Container(
                            height: 25.0,
                          ),
                          ElevatedButton(
                            onPressed: _launchGithubApp,
                            child: Text(
                              "My GitHub",
                            ),
                          ),
                          Container(
                            height: 25.0,
                          ),
                          ElevatedButton(
                            onPressed: _launchLinkedApp,
                            child: Text(
                              "My Linkedin",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
