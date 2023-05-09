import 'package:cubits_task/cubit/streak_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

import '../misc/utils.dart';

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
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  List<Event> _getEventsForDay(DateTime day) {
    // Implementation example
    return kEvents[day] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    debugPrint(kEvents.toString());

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
                                  child: StreakCountText(),
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
                          headerStyle: const HeaderStyle(
                            formatButtonVisible: false,
                            titleCentered: true,
                          ),
                          firstDay: DateTime.utc(2010, 10, 16),
                          lastDay: DateTime.utc(2030, 3, 14),
                          focusedDay: DateTime.now(),
                          startingDayOfWeek: StartingDayOfWeek.monday,
                          eventLoader: (day) {
                            return _getEventsForDay(day);
                          },
                          calendarBuilders: CalendarBuilders(
                            // singleMarkerBuilder: (context, day, event) {
                            //   return Stack(children: [
                            //     Container(
                            //       decoration: BoxDecoration(
                            //           borderRadius: BorderRadius.circular(10),
                            //           color: const Color(0xFF6A67DA)),
                            //     ),
                            //   ]);
                            // },
                            todayBuilder: (context, day, focusedDay) {
                              return Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(50, 107, 103, 218),
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      width: 1,
                                      color: const Color(0xFF6A67DA),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      focusedDay.day.toString(),
                                      style: const TextStyle(
                                        color: Color(0xFF6A67DA),
                                      ),
                                    ),
                                  ),
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

class StreakCountText extends StatelessWidget {
  const StreakCountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StreakCubit, StreakState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Text(
          // state.streakCount.toString(),
          "2",
          style: TextStyle(
            fontFamily: "Thunder",
            fontSize: 24,
            fontWeight: FontWeight.w900,
            color: Color(0xFF6A67DA),
          ),
        );
      },
    );
  }
}
