import 'package:flutter/material.dart';

import 'chess/chess_dashboard.dart';
import 'flappy_ghost/flappy_home_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Games',
        ),
      ),
      body: ListView(
        children: [
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ChassDashboard(),
                ),
              );
            },
            icon: Icon(
              Icons.psychology,
              color: Colors.greenAccent,
            ),
            label: Text(
              'Chess',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.greenAccent,
              ),
            ),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => FlappyHomePage(),
                ),
              );
            },
            icon: Icon(
              Icons.flutter_dash,
              color: Colors.black45,
            ),
            label: Text(
              'Flappy Ghost',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black45,
              ),
            ),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => FlappyHomePage(),
                ),
              );
            },
            icon: Icon(
              Icons.account_tree_outlined,
              color: Colors.pinkAccent,
            ),
            label: Text(
              'TIC TAC TOE',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.pinkAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
