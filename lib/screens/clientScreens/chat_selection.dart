import 'package:babyly/screens/clientScreens/componentesClient/baba_chats/chatScreenClient.dart';
import 'package:babyly/screens/clientScreens/chat_detailsclient.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:babyly/utilities/custom_heading.dart';

import 'componentesClient/baba_chats/chatScreenClient2.dart';
import 'componentesClient/baba_chats/chatScreenClient3.dart';
import 'componentesClient/baba_chats/chatScreenClient4.dart';

void main() => runApp(ChatApp());

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: ChatSelectionScreen(),
    );
  }
}

class ChatSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.4,
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(right: 235.0),
              child: Text(
                'Recentes',
                style: TextStyle(
                    color: Color(0xff8C68EC),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 150,
              child: ListView.builder(
                itemCount: 1,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(15),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 220.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 90,
                          height: 90,
                          margin: EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomRight,
                              stops: [0.1, 1],
                              colors: [
                                Color(0xFF8C68EC),
                                Color.fromARGB(255, 153, 27, 255),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: InkWell(
                            child: CircleAvatar(
                              radius: 70,
                              backgroundImage:
                                  AssetImage('assets/icons/babysitter1.jpg'),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BasicChat1(),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text('Joana'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            ListView.builder(
              itemCount: 1,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Material(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BasicChat2(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withAlpha(50),
                            offset: Offset(0, 0),
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                      'assets/icons/babysitter2.jpg'),
                                  minRadius: 35,
                                  backgroundColor: Colors.grey[200],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Maria',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                ),
                                Text(
                                  'Offline',
                                  style: TextStyle(
                                    color: Color(0xff8C68EC),
                                    fontSize: 14,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                ),
                                Text(
                                  '13:58',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: 15),
                                child: Icon(
                                  Icons.chevron_right,
                                  size: 18,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            ListView.builder(
              itemCount: 1,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Material(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BasicChat3(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withAlpha(50),
                            offset: Offset(0, 0),
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                      'assets/icons/babysitter3.jpg'),
                                  minRadius: 35,
                                  backgroundColor: Colors.grey[200],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Denise',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                ),
                                Text(
                                  'Offline',
                                  style: TextStyle(
                                    color: Color(0xff8C68EC),
                                    fontSize: 14,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                ),
                                Text(
                                  '09:00',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: 15),
                                child: Icon(
                                  Icons.chevron_right,
                                  size: 18,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            ListView.builder(
              itemCount: 1,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Material(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BasicChat4(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withAlpha(50),
                            offset: Offset(0, 0),
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                      'assets/icons/babysitter4.jpeg'),
                                  minRadius: 35,
                                  backgroundColor: Colors.grey[200],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Karen',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                ),
                                Text(
                                  'Offline',
                                  style: TextStyle(
                                    color: Color(0xff8C68EC),
                                    fontSize: 14,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 5),
                                ),
                                Text(
                                  '11:00',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: 15),
                                child: Icon(
                                  Icons.chevron_right,
                                  size: 18,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
