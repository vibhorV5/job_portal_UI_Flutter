import 'package:flutter/material.dart';

import 'login_page.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[800],
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120.0),
            child: Container(
              decoration: BoxDecoration(),
              height: 50,
              child: Image.asset(
                'assets/images/iphone.png',
                color: Colors.grey[300],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Divider(
            color: Colors.grey[600],
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Expanded(
              child: Container(
                height: 550,
                child: ListView(
                  children: <Widget>[
                    buildMenuItem(icon: Icons.home, text: 'HOME'),
                    SizedBox(height: 10),
                    buildMenuItem(icon: Icons.chat, text: 'INBOX'),
                    SizedBox(height: 10),
                    buildMenuItem(icon: Icons.settings, text: 'SETTINGS'),
                    SizedBox(height: 290),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        child: Container(
                          child:
                              buildMenuItem(icon: Icons.logout, text: 'LOGOUT'),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMenuItem({required IconData icon, required String text}) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey[300]),
      title: Text(
        text,
        style: TextStyle(color: Colors.grey[300], letterSpacing: 4),
      ),
    );
  }
}
