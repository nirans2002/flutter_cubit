import 'package:cubits_task/components/cal_count_card.dart';
import 'package:cubits_task/components/card_grid.dart';
import 'package:cubits_task/components/glance_week.dart';
import 'package:cubits_task/components/streak_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://miro.medium.com/v2/resize:fill:88:88/0*thO6OQqsKGUCGfqr.jpg"),
              radius: 30,
            ),
          ),
          title: const Text(
            "Muni",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          //TODO: change font
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.grid_view_rounded,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: const [
              StreakCard(),
              WeekGlanceCard(),
              CalCountCard(),
              CardGrid(),
            ],
          ),
        ),
      ),
    );
  }
}
