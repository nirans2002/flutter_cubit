
import 'package:flutter/material.dart';

class DayStreakWidget extends StatelessWidget {
  const DayStreakWidget({
    super.key,
    required this.streakCount,
    required this.day,
  });
  final int streakCount;
  final String day;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 40,
          height: 60,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFFF1F1F1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    day,
                    style: TextStyle(
                        fontSize: 16,
                        color: streakCount == 0
                            ? const Color(0xFF9A9A9A)
                            : const Color(0xFF6A67DA),
                        fontFamily: "Thunder"),
                  ),
                  Text(
                    streakCount == 0 ? "-" : streakCount.toString(),
                    style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF6A67DA),
                        fontFamily: "Thunder"),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 55,
          left: 10,
          child: SizedBox(
            width: 18,
            height: 8,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: streakCount == 0
                      ? const Color(0xFFF1F1F1)
                      : const Color(0xFF6A67DA)),
            ),
          ),
        ),
      ],
    );
  }
}
