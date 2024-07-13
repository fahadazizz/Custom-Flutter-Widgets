import 'package:flutter/material.dart';

class BottomNavCustomTabView extends StatefulWidget {
  const BottomNavCustomTabView({super.key});

  @override
  State<BottomNavCustomTabView> createState() => _BottomNavCustomTabViewState();
}

class _BottomNavCustomTabViewState extends State<BottomNavCustomTabView> {
  int _currentIndex = 0;
  void checkItem(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom bottom nav with tab view"),
      ),
      body: Pages[_currentIndex],
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: 90,
        child: BottomAppBar(
          color: Colors.grey.withOpacity(0.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      checkItem(0);
                    },
                    icon: Icon(Icons.home),
                  ),
                  Container(
                    width: 60,
                    height: 3,
                    color: _currentIndex == 0
                        ? Colors.deepPurple
                        : Colors.grey.withOpacity(0.5),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      checkItem(1);
                    },
                    icon: Icon(Icons.notifications),
                  ),
                  Container(
                    width: 60,
                    height: 3,
                    color: _currentIndex == 1
                        ? Colors.deepPurple
                        : Colors.grey.withOpacity(0.5),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      checkItem(2);
                    },
                    icon: Icon(Icons.search),
                  ),
                  Container(
                    width: 60,
                    height: 3,
                    color: _currentIndex == 2
                        ? Colors.deepPurple
                        : Colors.grey.withOpacity(0.5),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      checkItem(3);
                    },
                    icon: Icon(Icons.person),
                  ),
                  Container(
                    width: 60,
                    height: 3,
                    color: _currentIndex == 3
                        ? Colors.deepPurple
                        : Colors.grey.withOpacity(0.5),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List Pages = [
  Expanded(
    child: Container(
      alignment: Alignment.center,
      child: Text("1"),
    ),
  ),
  Expanded(
    child: Container(
      alignment: Alignment.center,
      child: Text("2"),
    ),
  ),
  Expanded(
    child: Container(
      alignment: Alignment.center,
      child: Text("3"),
    ),
  ),
  Expanded(
    child: Container(
      alignment: Alignment.center,
      child: Text("4"),
    ),
  ),
];
