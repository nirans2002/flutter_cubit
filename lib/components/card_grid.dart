import 'package:flutter/material.dart';

class CardGrid extends StatelessWidget {
  const CardGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  color: const Color(0xFFF5DDDD),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                          child: Image.asset("images/weight.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                          child: RichText(
                            text: const TextSpan(
                              text: '67.3',
                              style: TextStyle(
                                color: Color(0xFFCE5555),
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                fontFamily: "Athletics",
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '  kg',
                                  style: TextStyle(
                                    color: Color(0xFFCE5555),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20,
                                    fontFamily: "Athletics",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(6.0),
                                child: Icon(
                                  Icons.arrow_outward_rounded,
                                  color: Color(0xFFCE5555),
                                ),
                              ),
                              Text(
                                "0.5 kg",
                                style: TextStyle(
                                  color: Color(0xFFCE5555),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20,
                                  fontFamily: "Athletics",
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                          child: Text(
                            "from last week",
                            style: TextStyle(
                              color: Color(0xFFCE5555),
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              fontFamily: "Athletics",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  color: const Color(0xFFE0EFD9),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                          child: Image.asset("images/exercise_running 1.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                          child: RichText(
                            text: const TextSpan(
                              text: '13,827',
                              style: TextStyle(
                                color: Color(0xFF65B042),
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                fontFamily: "Athletics",
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '  steps',
                                  style: TextStyle(
                                    color: Color(0xFF65B042),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20,
                                    fontFamily: "Athletics",
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(6.0),
                                child: Icon(
                                  Icons.arrow_outward_rounded,
                                  color: Color(0xFF65B042),
                                ),
                              ),
                              Text(
                                "500 ",
                                style: TextStyle(
                                  color: Color(0xFF65B042),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 20,
                                  fontFamily: "Athletics",
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
                          child: Text(
                            "from last week",
                            style: TextStyle(
                              color: Color(0xFF65B042),
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              fontFamily: "Athletics",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: Stack(
                  children: [
                    const Text(
                      "data",
                      style: TextStyle(color: Colors.white),
                    ),
                    Image.asset(
                      "images/man.png",
                      scale: 1.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
