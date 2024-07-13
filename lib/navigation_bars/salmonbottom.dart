import 'package:flutter/material.dart';

class RoundSalmonBottom extends StatelessWidget {
  final Color backColor;
  final Color selectedColor;
  final Color unSelectedColor;
  final String text1;
  final IconData icon1;
  final String text2;
  final IconData icon2;
  final String text3;
  final IconData icon3;
  final String text4;
  final IconData icon4;
  int currentItem = 0;
  final VoidCallback onTap;
  RoundSalmonBottom({
    required this.icon1,
    required this.text1,
    required this.icon2,
    required this.text2,
    required this.icon3,
    required this.text3,
    required this.icon4,
    required this.text4,
    required this.backColor,
    required this.selectedColor,
    required this.unSelectedColor,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        child: Row(
          children: [
            // first icon
            InkWell(
              onTap: onTap,
              child: Container(
                height: 45,
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    currentItem == 0
                        ? Icon(
                            icon1,
                            color: selectedColor,
                          )
                        : Icon(
                            icon1,
                            color: unSelectedColor,
                          ),
                    const SizedBox(
                      width: 3,
                    ),
                    currentItem == 0
                        ? Text(
                            text1,
                            style: TextStyle(
                              color: selectedColor,
                            ),
                          )
                        : const Text(""),
                  ],
                ),
              ),
            ),
            // second icon
            InkWell(
              onTap: onTap,
              child: Container(
                height: 45,
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    currentItem == 1
                        ? Icon(
                            icon2,
                            color: selectedColor,
                          )
                        : Icon(
                            icon2,
                            color: unSelectedColor,
                          ),
                    const SizedBox(
                      width: 3,
                    ),
                    currentItem == 1
                        ? Text(
                            text2,
                            style: TextStyle(
                              color: selectedColor,
                            ),
                          )
                        : const Text(""),
                  ],
                ),
              ),
            ),
            // third icon
            InkWell(
              onTap: onTap,
              child: Container(
                height: 45,
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    currentItem == 2
                        ? Icon(
                            icon3,
                            color: selectedColor,
                          )
                        : Icon(
                            icon3,
                            color: unSelectedColor,
                          ),
                    const SizedBox(
                      width: 3,
                    ),
                    currentItem == 2
                        ? Text(
                            text3,
                            style: TextStyle(
                              color: selectedColor,
                            ),
                          )
                        : const Text(""),
                  ],
                ),
              ),
            ),
            // fourth icon
            InkWell(
              onTap: onTap,
              child: Container(
                height: 45,
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    currentItem == 3
                        ? Icon(
                            icon4,
                            color: selectedColor,
                          )
                        : Icon(
                            icon4,
                            color: unSelectedColor,
                          ),
                    const SizedBox(
                      width: 3,
                    ),
                    currentItem == 3
                        ? Text(
                            text4,
                            style: TextStyle(
                              color: selectedColor,
                            ),
                          )
                        : const Text(""),
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
