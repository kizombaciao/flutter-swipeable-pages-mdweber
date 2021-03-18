import './child_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  PageController _pageController = PageController(
    initialPage: 0,
  );

  Widget childWidget = ChildWidget(
    number: AvailableNumber.First,
  );

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey[500],
          currentIndex: currentIndex,
          onTap: (value) {
            currentIndex = value;
            //_pageController.jumpToPage(value);
            _pageController.animateToPage(
              value,
              duration: Duration(milliseconds: 800),
              curve: Curves.linear,
            );
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
        body: PageView(
          //scrollDirection: Axis.vertical,
          controller: _pageController,
          onPageChanged: (page) {
            setState(
              () {
                currentIndex = page;
              },
            );
          },
          children: [
            ChildWidget(number: AvailableNumber.First),
            ChildWidget(number: AvailableNumber.Second),
            ChildWidget(number: AvailableNumber.Third),
            ChildWidget(number: AvailableNumber.Fourth),
          ],
        ));
  }
}
