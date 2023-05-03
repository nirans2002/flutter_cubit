import 'package:flutter/material.dart';

class StreakCard extends StatelessWidget {
  const StreakCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: const [
              Text(
                "Your Streak",
                style: TextStyle(
                  fontFamily: 'Thunder',
                  fontSize: 24,
                  color: Color.fromARGB(200, 114, 114, 114),
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
