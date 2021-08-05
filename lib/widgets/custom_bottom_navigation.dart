import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatefulWidget {
  CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationState createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showUnselectedLabels: false,
        // showSelectedLabels: false,
        selectedItemColor: Colors.pink,
        backgroundColor: Color.fromRGBO(55, 57, 84, 1),
        unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                  icon: Icon(Icons.calendar_today_outlined),
                  onPressed: () {
                    setState(() => _currentIndex = 0);
                  }),
              label: 'Calendario'),
          BottomNavigationBarItem(
              icon: IconButton(
                  icon: Icon(Icons.pie_chart_outline_outlined),
                  onPressed: () {
                    setState(() => _currentIndex = 1);
                  }),
              label: 'Gráfica'),
          BottomNavigationBarItem(
              icon: IconButton(
                  icon: Icon(Icons.supervised_user_circle_outlined),
                  onPressed: () {
                    setState(() => _currentIndex = 2);
                  }),
              label: 'Usuarios'),
        ]);
  }
}
