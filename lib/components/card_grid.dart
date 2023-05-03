import 'package:flutter/material.dart';

class CardGrid extends StatelessWidget {
  const CardGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: const Color(0xFFF5DDDD),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("images/weight.png"),
                      RichText(
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
                      Row(
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
                      const Text(
                        "from last week",
                        style: TextStyle(
                          color: Color(0xFFCE5555),
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                          fontFamily: "Athletics",
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Column(),
      ],
    );
  }
}
