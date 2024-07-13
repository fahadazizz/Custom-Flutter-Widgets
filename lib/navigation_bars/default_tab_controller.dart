import 'package:flutter/material.dart';

class DefaultTabControllerPage extends StatelessWidget {
  const DefaultTabControllerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 100,
          title: const Text("Whatsapp Clone"),
          actions: const [
            Icon(Icons.camera),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.settings),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.menu),
            SizedBox(
              width: 10,
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text("Home"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("Calls"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: RichText(
                text: const TextSpan(
                  text: "Home",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Center(
              child: RichText(
                text: const TextSpan(
                  text: "Status",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Center(
              child: RichText(
                text: const TextSpan(
                  text: "Calls",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.grey.withOpacity(0.7),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
