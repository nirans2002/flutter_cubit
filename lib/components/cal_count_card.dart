import 'package:cubits_task/components/cal_card_widgets.dart';
import 'package:flutter/material.dart';

class CalCountCard extends StatelessWidget {
  const CalCountCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFD78D59),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            AvgCalCard(
              avgkCal: 2392,
            ),
            TdeeCard(
              tdee: 2392,
            ),
          ],
        ),
      ),
    );
  }
}
