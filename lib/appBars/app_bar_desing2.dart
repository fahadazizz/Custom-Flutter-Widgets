import 'package:flutter/material.dart';

class AppBarDesign2 extends StatefulWidget {
  const AppBarDesign2({super.key});

  @override
  State<AppBarDesign2> createState() => _AppBarDesign2State();
}

class _AppBarDesign2State extends State<AppBarDesign2> {
  @override
  int _currentIndex = 0;
  void onChecked(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height / 1.4,
              color: Colors.amber,
              child: Pages[_currentIndex],
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width / 1.1,
                  color: Colors.blue,
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: 80,
                  color: Colors.redAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: _currentIndex == 0
                              ? Colors.white
                              : Colors.redAccent,
                        ),
                        margin: EdgeInsets.only(
                          bottom: _currentIndex == 0 ? 100 : 0,
                        ),
                        child: IconButton(
                          onPressed: () {
                            onChecked(0);
                          },
                          icon: Icon(
                            Icons.home,
                            size: _currentIndex == 0 ? 40 : 27,
                          ),
                        ),
                      ),
                      Container(
                        child: IconButton(
                            onPressed: () {
                              onChecked(1);
                            },
                            icon: const Icon(Icons.search)),
                      ),
                      Container(
                        child: IconButton(
                            onPressed: () {
                              onChecked(2);
                            },
                            icon: const Icon(Icons.person)),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

List Pages = [
  Container(
    color: Colors.amber,
  ),
  Container(
    color: Colors.blue,
  ),
  Container(
    color: Colors.redAccent,
  ),
];
