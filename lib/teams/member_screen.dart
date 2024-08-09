import 'package:flutter/material.dart';

import '../hold_models/items/team_data.dart';
import '../lists/all_rounders.dart';
import '../lists/batters.dart';
import '../lists/bowlers.dart';

class MemberScreen extends StatefulWidget {
  final TeamData teamData;

  const MemberScreen({super.key, required this.teamData});
  @override
  State<MemberScreen> createState() => _MemberScreenState();
}

class _MemberScreenState extends State<MemberScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> _tabs = [
      Batters(teamData: widget.teamData,),
      Bowlers(teamData: widget.teamData,),
      AllRounders(teamData: widget.teamData,)
    ];

    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(

        appBar: AppBar(


          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xFF3b3b6d),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.transparent,
                  child: Image.asset("assets/images/bat.png"),
                ),
                text: "Batter's",
              ),
              Tab(
                icon: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.transparent,
                  child: Image.asset("assets/images/ball.png"),
                ),
                text: "Bowler's",
              ),
              Tab(
                icon: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.transparent,
                  child: Image.asset("assets/images/p1.jpg"),
                ),
                text: "All-Rounder's",
              ),
            ],
            labelStyle: TextStyle(color: Colors.orange.shade900),
            unselectedLabelColor: Color(0xFF3b3b6d),
          ),
        ),
        body: TabBarView(
          children: _tabs,

        ),
      ),
    );
  }
}
