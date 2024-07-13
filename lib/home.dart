import 'package:flutter/material.dart';
import 'package:practive_old_revision/color.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class HomePage extends StatelessWidget {
  @override
  ColorChange obj = ColorChange();
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("All widget use"),
          centerTitle: true,
          elevation: 2,
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    // Bottom navigation bar 1
                    WidgetAnimator(
                      incomingEffect:
                          WidgetTransitionEffects.incomingSlideInFromTop(
                        duration: Duration(milliseconds: 900),
                      ),
                      child: ItemsNavigation(
                          title: "Bottom Navigation 1", path: '/bottomnav1'),
                    ),

                    // Horizontal scroll navigation bar
                    WidgetAnimator(
                      incomingEffect:
                          WidgetTransitionEffects.incomingSlideInFromLeft(
                        duration: Duration(milliseconds: 900),
                      ),
                      child: ItemsNavigation(
                          title: "Horizontal Scroll Navigation Bar",
                          path: '/horizontalscroolbar'),
                    ),

                    // Simple AppBar
                    WidgetAnimator(
                        incomingEffect:
                            WidgetTransitionEffects.incomingSlideInFromRight(
                          duration: Duration(milliseconds: 900),
                        ),
                        child: ItemsNavigation(
                            title: "Simple AppBar 1", path: '/simpleappbar1')),

                    // PageView1
                    WidgetAnimator(
                      incomingEffect: WidgetTransitionEffects.incomingScaleUp(
                        duration: Duration(milliseconds: 900),
                      ),
                      child: ItemsNavigation(
                          title: "Page View 1", path: '/pageview1'),
                    ),

                    // Default Tab Controller
                    WidgetAnimator(
                      incomingEffect:
                          WidgetTransitionEffects.incomingSlideInFromRight(
                        duration: Duration(milliseconds: 900),
                      ),
                      child: ItemsNavigation(
                          title: "Defalut Tab Controller",
                          path: '/defaulttabcontroller'),
                    ),

                    // Image Picker
                    WidgetAnimator(
                      incomingEffect:
                          WidgetTransitionEffects.incomingSlideInFromLeft(
                        duration: Duration(milliseconds: 900),
                      ),
                      child: ItemsNavigation(
                          title: "Image picker", path: '/imagepicker1'),
                    ),

                    // list wheel scrool view
                    WidgetAnimator(
                      incomingEffect:
                          WidgetTransitionEffects.incomingSlideInFromBottom(
                        duration: Duration(milliseconds: 900),
                      ),
                      child: ItemsNavigation(
                          title: "List wheel scrool view",
                          path: '/Listwheelscroolview'),
                    ),

                    // first animation
                    WidgetAnimator(
                      incomingEffect:
                          WidgetTransitionEffects.incomingSlideInFromRight(
                        duration: Duration(milliseconds: 900),
                      ),
                      child: ItemsNavigation(
                          title: "First animation", path: '/firstanimation1'),
                    ),
                    // botom navigation with custom tab view
                    WidgetAnimator(
                      incomingEffect: WidgetTransitionEffects.incomingScaleUp(),
                      child: ItemsNavigation(
                          title: "Custom bottom nav with tab view",
                          path: '/bottomnavtabview'),
                    ),

                    // bottom nav with custom container
                    WidgetAnimator(
                      incomingEffect:
                          WidgetTransitionEffects.incomingSlideInFromLeft(),
                      child: ItemsNavigation(
                          title: "Custom bottom nav with container",
                          path: '/bottomnavcontainer'),
                    ),

                    // new practice
                    WidgetAnimator(
                      incomingEffect:
                          WidgetTransitionEffects.incomingSlideInFromTop(
                        duration: Duration(milliseconds: 900),
                      ),
                      child: ItemsNavigation(
                          title: "Animated Package", path: '/animatedPackage'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}

class ItemsNavigation extends StatelessWidget {
  @override
  String title;
  String path;
  ItemsNavigation({required this.title, required this.path});
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width / 1.2,
      height: 65,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            offset: const Offset(2, 3),
            spreadRadius: 4,
            blurRadius: 5,
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          backgroundColor: Colors.amber,
          foregroundColor: Colors.black,
        ),
        onPressed: () {
          Navigator.pushNamed(context, path);
        },
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
