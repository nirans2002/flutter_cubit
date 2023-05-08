import 'package:flutter/material.dart';

class StreakCard extends StatefulWidget {
  const StreakCard({
    super.key,
  });

  @override
  State<StreakCard> createState() => _StreakCardState();
}

class _StreakCardState extends State<StreakCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
        debugPrint(isExpanded.toString());
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: AnimatedContainer(
              height: isExpanded ? 150 : 45,
              duration: const Duration(seconds: 2),
              curve: Curves.bounceOut,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Your Streak",
                        style: TextStyle(
                          fontFamily: 'Thunder',
                          fontSize: 24,
                          color: Color.fromARGB(200, 114, 114, 114),
                        ),
                      ),
                      const Divider(
                        thickness: 10,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        // width: 64,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          surfaceTintColor: Colors.deepPurple.shade200,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color(0xFFDCDBFF),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset('images/streak_art.png'),
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                      fontFamily: "Thunder",
                                      fontSize: 24,
                                      fontWeight: FontWeight.w900,
                                      color: Color(0xFF6A67DA),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  isExpanded
                      ? const Text("calender")
                      : const SizedBox(
                          height: 0,
                        )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
