// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class desgin2 extends StatefulWidget {
  const desgin2({super.key});

  @override
  State<desgin2> createState() => _desgin2State();
}

class _desgin2State extends State<desgin2> {
  late PageController _pageController;
  int totalpage = 3;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 2,
    )..addListener(
        (_onScroll),
      );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(controller: _pageController, children: [
      pageDesgin(
          'images/design1.jpg',
          "If dessert is your favourite part of the meal, then this collection is for you! Filled with luscious mousses, creamy caramels and comforting puds, we’re sure this selection will make your sweet tooth happy",
          "Egypt",
          "3"),
      pageDesgin(
        'images/desgin3.jpg',
        "pasta is one of the favorite foods of a large segment of society, as it is the perfect choice when feeling hungry, With the need to eat an easy and quick meal, and the beauty of eating pasta, it can add many ingredients that help it to be healthy and delicious at the same time ",
        "China",
        "2"
      ),
      pageDesgin(
          'images/desgin2.webp',
          "Hamburgers are customarily eaten as a sandwich,"
              "between two halves of a round bun. mustard,"
              "mayonnaise, ketchup, and other condiments,"
              " along with garnishes of lettuce, onion, tomato,"
              "and sliced pickle, constitute the customary dressing; "
              "fried eggs and avocado may be added as well.x",
          "USA","1"),
    ]));
  }

  Widget pageDesgin(image, descriptionfood, nation, page) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.bottomRight, stops: const [
            0.1,
            0.9
          ], colors: [
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(.1),
          ]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  textBaseline: TextBaseline.alphabetic,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      page,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50),
                    ),
                    Text(
                      "/$totalpage",
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        nation,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.w700),
                      ),
                      const Text(
                        "Food best ",
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.yellow,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.yellow,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.yellow,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.yellow,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "4.0",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "(2300)",
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        descriptionfood,
                    style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text("Read more....",
                          style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
