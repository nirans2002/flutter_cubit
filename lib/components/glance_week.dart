import 'package:cubits_task/components/day_streak_widget.dart';
import 'package:flutter/material.dart';

class WeekGlanceCard extends StatelessWidget {
  const WeekGlanceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Your week at a glance",
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontFamily: "THunder",
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                DayStreakWidget(
                  day: 'M',
                  streakCount: 2342,
                ),
                DayStreakWidget(
                  day: 'T',
                  streakCount: 0,
                ),
                DayStreakWidget(
                  day: 'W',
                  streakCount: 2342,
                ),
                DayStreakWidget(
                  day: 'T',
                  streakCount: 0,
                ),
                DayStreakWidget(
                  day: 'F',
                  streakCount: 2342,
                ),
                DayStreakWidget(
                  day: 'S',
                  streakCount: 0,
                ),
                DayStreakWidget(
                  day: 'S',
                  streakCount: 0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
