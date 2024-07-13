import 'package:flutter/material.dart';
import 'package:practive_old_revision/animation/first_animation.dart';
import 'package:practive_old_revision/appBars/simple_App_Bar.dart';
import 'package:practive_old_revision/extra_learning/image_picker.dart';
import 'package:practive_old_revision/list_view-list/list_wheel_scroll.dart';
import 'package:practive_old_revision/navigation_bars/bottom_nav_container_custom.dart';
import 'package:practive_old_revision/navigation_bars/bottom_nav_custom_tabs.dart';
import 'package:practive_old_revision/navigation_bars/default_tab_controller.dart';
import 'package:practive_old_revision/home.dart';
import 'package:practive_old_revision/navigation_bars/bottom_navigation_1.dart';
import 'package:practive_old_revision/navigation_bars/horizontal_scroll_navigation_bar.dart';
import 'package:practive_old_revision/list_view-list/page_view.dart';
import 'package:practive_old_revision/newPractice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/bottomnav1': (context) => const BottomNav1(),
        '/horizontalscroolbar': (context) => const HorizontalScrollNavBar(),
        '/simpleappbar1': (context) => const SimpleAppBar1(),
        '/pageview1': (context) => const PageViewPage(),
        '/defaulttabcontroller': (context) => const DefaultTabControllerPage(),
        '/imagepicker1': (context) => const ImagePicker1(),
        '/Listwheelscroolview': (context) => const ListWheelScroll1(),
        '/firstanimation1': (context) => const FirstAnimation1(),
        '/bottomnavtabview': (context) => const BottomNavCustomTabView(),
        '/bottomnavcontainer': (context) => const BottomNavwithContainer(),
        '/animatedPackage': (context) =>
            Animated_Splash_Screen(image: 'image/placeholder-200-200'),
      },
      home: HomePage(),
    );
  }
}
