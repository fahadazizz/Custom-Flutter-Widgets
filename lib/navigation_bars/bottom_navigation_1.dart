import 'package:flutter/material.dart';

class BottomNav1 extends StatefulWidget {
  const BottomNav1({super.key});

  @override
  State<BottomNav1> createState() => _BottomNav1State();
}

class _BottomNav1State extends State<BottomNav1> {
  @override
  int _currentItem = 0;

  void onSelect(index) {
    setState(() {
      _currentItem = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Pages[_currentItem],
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(15),
          ),
          width: MediaQuery.of(context).size.width / 1.5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  onSelect(0);
                },
                child: Icon(
                  Icons.home,
                  color: _currentItem == 0 ? Colors.black : Colors.grey,
                ),
              ),
              InkWell(
                onTap: () {
                  onSelect(1);
                },
                child: Icon(
                  Icons.person,
                  color: _currentItem == 1 ? Colors.black : Colors.grey,
                ),
              ),
              InkWell(
                onTap: () {
                  onSelect(2);
                },
                child: Icon(
                  Icons.inbox,
                  color: _currentItem == 2 ? Colors.black : Colors.grey,
                ),
              ),
              InkWell(
                onTap: () {
                  onSelect(3);
                },
                child: Icon(
                  Icons.contact_emergency,
                  color: _currentItem == 3 ? Colors.black : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List Pages = [
  Container(
    child: Text("1"),
  ),
  Container(
    child: Text("2"),
  ),
  Container(
    child: Text("3"),
  ),
  Container(
    child: Text("4"),
  ),
];
