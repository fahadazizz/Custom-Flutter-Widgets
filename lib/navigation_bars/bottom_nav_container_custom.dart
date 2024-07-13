import 'package:flutter/material.dart';

class BottomNavwithContainer extends StatefulWidget {
  const BottomNavwithContainer({super.key});

  @override
  State<BottomNavwithContainer> createState() =>
      _CustomBottomNavWithContainerState();
}

class _CustomBottomNavWithContainerState extends State<BottomNavwithContainer> {
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
        title: Text("Custom bottom nav with container"),
      ),
      body: Pages[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.withOpacity(0.2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                checkItem(0);
              },
              child: Container(
                width: _currentIndex == 0 ? 90 : 30,
                alignment: Alignment.center,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: _currentIndex == 0 ? Colors.white : Colors.transparent,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.home),
                    _currentIndex == 0 ? Text("Home") : Text(""),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                checkItem(1);
              },
              child: Container(
                width: _currentIndex == 1 ? 90 : 30,
                alignment: Alignment.center,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: _currentIndex == 1 ? Colors.white : Colors.transparent,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.inbox),
                    _currentIndex == 1 ? Text("Inbox") : Text(""),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                checkItem(2);
              },
              child: Container(
                width: _currentIndex == 2 ? 90 : 30,
                alignment: Alignment.center,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: _currentIndex == 2 ? Colors.white : Colors.transparent,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.search),
                    _currentIndex == 2 ? Text("Search") : Text(""),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                checkItem(3);
              },
              child: Container(
                width: _currentIndex == 3 ? 90 : 30,
                alignment: Alignment.center,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: _currentIndex == 3 ? Colors.white : Colors.transparent,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.person),
                    _currentIndex == 3 ? Text("Person") : Text(""),
                  ],
                ),
              ),
            ),
          ],
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
