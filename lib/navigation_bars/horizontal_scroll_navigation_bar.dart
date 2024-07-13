import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HorizontalScrollNavBar extends StatefulWidget {
  const HorizontalScrollNavBar({super.key});

  @override
  State<HorizontalScrollNavBar> createState() => _HorizontalScrollNavBarState();
}

class _HorizontalScrollNavBarState extends State<HorizontalScrollNavBar> {
  @override
  int _currentItem = 0;

  void setItem(index) {
    setState(() {
      _currentItem = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            dragStartBehavior: DragStartBehavior.down,
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setItem(0);
                    },
                    child: NavItems(
                      title: "Home",
                      front: _currentItem == 0 ? Colors.white : Colors.black,
                      back: _currentItem == 0 ? Colors.black : Colors.white,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setItem(1);
                    },
                    child: NavItems(
                      title: "Flutter",
                      back: _currentItem == 1 ? Colors.black : Colors.white,
                      front: _currentItem == 1 ? Colors.white : Colors.black,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setItem(2);
                    },
                    child: NavItems(
                      title: "Java",
                      back: _currentItem == 2 ? Colors.black : Colors.white,
                      front: _currentItem == 2 ? Colors.white : Colors.black,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setItem(3);
                    },
                    child: NavItems(
                      title: "C++",
                      back: _currentItem == 3 ? Colors.black : Colors.white,
                      front: _currentItem == 3 ? Colors.white : Colors.black,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setItem(4);
                    },
                    child: NavItems(
                      title: "Python",
                      front: _currentItem == 4 ? Colors.white : Colors.black,
                      back: _currentItem == 4 ? Colors.black : Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 1.3,
            margin: const EdgeInsets.only(top: 10),
            child: Pages[_currentItem],
          ),
        ],
      ),
    );
  }
}

class NavItems extends StatelessWidget {
  String title;
  Color back;
  Color front;
  NavItems({
    required this.title,
    required this.back,
    required this.front,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 100,
      margin: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black45),
        color: back,
      ),
      child: RichText(
        text: TextSpan(
          text: title,
          style: TextStyle(
            color: front,
          ),
        ),
      ),
    );
  }
}

List Pages = [
  Container(
    alignment: Alignment.center,
    child: RichText(
      text: const TextSpan(
        text: "Home",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    ),
  ),
  Container(
    alignment: Alignment.center,
    child: RichText(
      text: const TextSpan(
        text: "Flutter",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    ),
  ),
  Container(
    alignment: Alignment.center,
    child: RichText(
      text: const TextSpan(
        text: "Java",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    ),
  ),
  Container(
    alignment: Alignment.center,
    child: RichText(
      text: const TextSpan(
        text: "C++",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    ),
  ),
  Container(
    alignment: Alignment.center,
    child: RichText(
      text: const TextSpan(
        text: "Python",
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ),
];
