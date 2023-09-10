import 'package:Pedagodino/screens/babysitterScreens/chat_selection_babysitter.dart';
import 'package:Pedagodino/screens/babysitterScreens/login_babysitter.dart';
import 'package:Pedagodino/screens/babysitterScreens/profile_babysitter.dart';
import 'package:Pedagodino/screens/clientScreens/chat_selection.dart';
import 'package:Pedagodino/screens/clientScreens/login.dart';
import 'package:Pedagodino/screens/settings_screen.dart';
import 'package:Pedagodino/screens/clientScreens/componentesClient/baba_cards/baba2.dart';
import 'package:Pedagodino/screens/clientScreens/componentesClient/baba_cards/baba3.dart';
import 'package:Pedagodino/screens/clientScreens/componentesClient/baba_cards/baba4.dart';
import 'package:flutter/material.dart';
import 'package:Pedagodino/screens/clientScreens/componentesClient/baba_cards/baba1.dart';

import 'componentesbaba/parentscards/parents1.dart';
import 'componentesbaba/parentscards/parents2.dart';
import 'componentesbaba/parentscards/parents3.dart';
import 'componentesbaba/parentscards/parents4.dart';

class ChildListScreen extends StatefulWidget {
  const ChildListScreen({Key? key}) : super(key: key);
  @override
  _ChildListScreenState createState() => _ChildListScreenState();
}

class _ChildListScreenState extends State<ChildListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.purple,
      ),
      drawer: NavigationDrawer(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Container(
                height: 110.0,
                margin: const EdgeInsets.all(0),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => const parents1(),
                  shrinkWrap: true,
                  itemCount: 1,
                ),
              ),
            ),
            const SizedBox(height: 0),
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Container(
                height: 110.0,
                margin: const EdgeInsets.all(0),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => const parents2(),
                  shrinkWrap: true,
                  itemCount: 1,
                ),
              ),
            ),
            const SizedBox(height: 0),
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Container(
                height: 110.0,
                margin: const EdgeInsets.all(0),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => const parents3(),
                  shrinkWrap: true,
                  itemCount: 1,
                ),
              ),
            ),
            const SizedBox(height: 0),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: Container(
                  height: 110.0,
                  margin: const EdgeInsets.all(0),
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => const parents4(),
                    shrinkWrap: true,
                    itemCount: 1,
                  ),
                ),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Security(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.purple,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.child_care),
            title: Text('Crianças'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ChildListScreen(),
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text('Chats'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ChatSelectionBBScreen(),
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProfileScreenBabysitter(),
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Security(),
              ));
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => LoginBabyScreen(),
              ));
            },
          ),
        ],
      ),
    );
  }
}
