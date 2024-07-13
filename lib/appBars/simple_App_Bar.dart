import 'package:flutter/material.dart';

class SimpleAppBar1 extends StatelessWidget {
  const SimpleAppBar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(0.3),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(18),
            bottomRight: Radius.circular(15),
          ),
        ),
        elevation: 100,
        centerTitle: true,
        title: const Text("Welcome to app bar 1"),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text("Setting")),
                const PopupMenuItem(child: Text("Privacy Policy")),
                const PopupMenuItem(child: Text("Log Out")),
              ];
            },
          ),
        ],
      ),
    );
  }
}
