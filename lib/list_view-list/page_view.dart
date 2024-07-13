import 'package:flutter/material.dart';

class PageViewPage extends StatefulWidget {
  const PageViewPage({super.key});

  @override
  State<PageViewPage> createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  @override
  int _selectedIndex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 1.4,
              color: Colors.amber,
              child: PageView(
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                children: [
                  Container(
                    color: Colors.amber,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.green,
                  ),
                  Container(
                    color: Colors.redAccent,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width / 1.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.circle,
                  size: 15,
                  color: _selectedIndex == 0 ? Colors.amber : Colors.grey,
                ),
                const SizedBox(
                  width: 2,
                ),
                Icon(
                  size: 15,
                  Icons.circle,
                  color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
                ),
                const SizedBox(
                  width: 2,
                ),
                Icon(
                  color: _selectedIndex == 2 ? Colors.green : Colors.grey,
                  size: 15,
                  Icons.circle,
                ),
                const SizedBox(
                  width: 2,
                ),
                Icon(
                  color: _selectedIndex == 3 ? Colors.redAccent : Colors.grey,
                  Icons.circle,
                  size: 15,
                ),
                const SizedBox(
                  width: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
