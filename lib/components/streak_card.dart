import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class StreakCard extends StatefulWidget {
  const StreakCard({
    super.key,
  });

  @override
  State<StreakCard> createState() => _StreakCardState();
}

class _StreakCardState extends State<StreakCard> {
  bool isExpanded = false;
  final Map<DateTime, List<dynamic>> _events = {
    DateTime(2021, 6, 22): [
      'Meeting URUS',
      'Testing Danai Mobile',
      'Weekly Report',
      'Weekly Meeting'
    ],
    DateTime(2021, 6, 25): ['Weekly Testing'],
    DateTime(2021, 6, 4): ['Weekly Testing'],
    DateTime(2021, 6, 11): ['Weekly Testing'],
    DateTime(2021, 6, 18): ['Weekly Testing'],
  };

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
              height: isExpanded ? MediaQuery.of(context).size.height / 2 : 45,
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
                      ? TableCalendar(
                          firstDay: DateTime.utc(2010, 10, 16),
                          lastDay: DateTime.utc(2030, 3, 14),
                          focusedDay: DateTime.now(),
                          startingDayOfWeek: StartingDayOfWeek.monday,
                          calendarBuilders: CalendarBuilders(
                            // markerBuilder: (context, day, events) => ,
                            singleMarkerBuilder: (context, day, event) {
                              return Center(
                                child: Stack(
                                  children: const [
                                    Text(
                                      "S",
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 125, 125, 125),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            dowBuilder: (context, day) {
                              if (day.weekday == DateTime.sunday) {
                                return const Center(
                                  child: Text(
                                    "S",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 125, 125, 125),
                                    ),
                                  ),
                                );
                              }
                              if (day.weekday == DateTime.monday) {
                                return const Center(
                                  child: Text(
                                    "M",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 125, 125, 125),
                                    ),
                                  ),
                                );
                              }
                              if (day.weekday == DateTime.tuesday) {
                                return const Center(
                                  child: Text(
                                    "T",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 125, 125, 125),
                                    ),
                                  ),
                                );
                              }
                              if (day.weekday == DateTime.wednesday) {
                                return const Center(
                                  child: Text(
                                    "W",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 125, 125, 125),
                                    ),
                                  ),
                                );
                              }
                              if (day.weekday == DateTime.thursday) {
                                return const Center(
                                  child: Text(
                                    "T",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 125, 125, 125),
                                    ),
                                  ),
                                );
                              }
                              if (day.weekday == DateTime.friday) {
                                return const Center(
                                  child: Text(
                                    "F",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 125, 125, 125),
                                    ),
                                  ),
                                );
                              }
                              if (day.weekday == DateTime.saturday) {
                                return const Center(
                                  child: Text(
                                    "S",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 125, 125, 125),
                                    ),
                                  ),
                                );
                              }
                              return null;
                            },
                          ),
                        )
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
