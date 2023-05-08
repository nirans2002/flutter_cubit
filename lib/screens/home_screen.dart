import 'package:cubits_task/components/cal_count_card.dart';
import 'package:cubits_task/components/card_grid.dart';
import 'package:cubits_task/components/glance_week.dart';
import 'package:cubits_task/components/navigation_bar.dart';
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                StreakCard(),
                Card(
                  elevation: 0,
                  // color: const Color(0xFFD78D59),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: const [
                      WeekGlanceCard(),
                      CalCountCard(),
                      statusTextWidget(),
                    ],
                  ),
                ),
                const CardGrid(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: MyNavigationBar(
          onItemTap: (int tappedIndex) {
            print('Tapped index: $tappedIndex');
          },
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          backgroundColor: Colors.white,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            NavigationDestination(
              icon: Icon(Icons.rice_bowl_rounded),
              label: 'food',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_pin_circle_outlined),
              label: 'profile',
            ),
          ],
        ),
      ),
    );
  }
}

class statusTextWidget extends StatelessWidget {
  const statusTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/calendar.png"),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Your bulking goal is on track",
              style: TextStyle(
                fontFamily: "Athletics",
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Color(0xFF474747),
                )),
          )
        ],
      ),
    );
  }
}
