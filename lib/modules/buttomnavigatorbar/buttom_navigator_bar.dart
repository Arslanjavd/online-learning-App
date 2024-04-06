import 'package:flutter/material.dart';
import 'package:oline_learning_app/modules/course/course.dart';
import 'package:oline_learning_app/modules/homepage/home_page.dart';
import 'package:oline_learning_app/modules/screach_filter/screach_fliter.dart';

class ButttonNavigator_bar extends StatefulWidget {
  const ButttonNavigator_bar({super.key});

  @override
  State<ButttonNavigator_bar> createState() => _ButttonNavigator_barState();
}

class _ButttonNavigator_barState extends State<ButttonNavigator_bar> {
  int bar = 0;
  @override
  Widget build(BuildContext context) {
    void navbar(int index) {
      setState(() {
        bar = index;
      });
    }

    final screen = [const HomePage(), const Course(), ScreachFliter()];

    return Scaffold(
      body: screen[bar],
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.blue,
          currentIndex: bar,
          onTap: navbar,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: "Course"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: "message"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), label: "Account"),
          ]),
    );
  }
}
