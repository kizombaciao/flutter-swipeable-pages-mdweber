import './child_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  Widget childWidget = ChildWidget(
    number: AvailableNumber.First,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey[500],
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;

          switch (value) {
            case 0:
              childWidget = ChildWidget(number: AvailableNumber.First);
              break;
            case 1:
              childWidget = ChildWidget(number: AvailableNumber.Second);
              break;
            case 2:
              childWidget = ChildWidget(number: AvailableNumber.Third);
              break;
            case 3:
              childWidget = ChildWidget(number: AvailableNumber.Third);
              break;
          }

          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "First",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            label: "Second",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "Third",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "Fourth",
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SafeArea(
          child: childWidget,
        ),
      ),
    );
  }
}
