import 'package:flutter/material.dart';
import 'package:snapquest/screens/challenges_screen.dart';
import 'package:snapquest/screens/home_screen.dart';
import 'package:snapquest/screens/profile_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> screens  = [HomeScreen(),ChallengesScreen(), ProfileScreen()];
    Widget selectedScreen = screens[currentIndex];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('SnapQuest'),
      ),
      backgroundColor: Colors.white,
      body: selectedScreen,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black.withAlpha(150),
        unselectedItemColor: Colors.grey,
        onTap: (int index){
          setState(() {
            currentIndex = index;
            selectedScreen = screens[currentIndex];
          });

        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: 'Home', ),
          BottomNavigationBarItem(icon: Icon(Icons.rocket_launch_rounded), label: 'Challenges'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
      ),
    );
  }
}
