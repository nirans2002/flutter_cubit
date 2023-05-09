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
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://miro.medium.com/v2/resize:fill:88:88/0*thO6OQqsKGUCGfqr.jpg"),
                  )),
            ),
          ),
          centerTitle: true,
          title: const Text(
            "muni",
            style: TextStyle(
              fontFamily: "Thunder",
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Color(0xFF9A9A9A),
            ),
          ),
          //TODO: change font
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset("images/menu_icon.png"),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const StreakCard(),
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
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          backgroundColor: Colors.white,
          destinations: [
            NavigationDestination(
              icon: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Image.asset("images/home.png"),
                    const Text(
                      "home",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Athletics",
                        color: Color(0xFF6A67DA),
                      ),
                    ),
                  ]),
              label: '',
            ),
            NavigationDestination(
              icon: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Image.asset("images/food.png"),
                    const Text(
                      "food",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Athletics",
                        color: Color(0xFF9A9A9A),
                      ),
                    ),
                  ]),
              label: '',
            ),
            NavigationDestination(
              icon: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Image.asset("images/profile.png"),
                    const Text(
                      "profile",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Athletics",
                        color: Color(0xFF9A9A9A),
                      ),
                    ),
                  ]),
              label: '',
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
