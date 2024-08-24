import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_screen/helper/bottom_nav_bar_item.dart';
import 'package:flutter_profile_screen/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0.0,
        title: const Text('PROFILE'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_rounded,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
        type: BottomNavigationBarType.fixed,
        items: [
          buildBottomNavBarItem(
            label: 'home',
            icon: CupertinoIcons.home,
          ),
          buildBottomNavBarItem(
            label: 'Messages',
            icon: CupertinoIcons.chat_bubble_2,
          ),
          buildBottomNavBarItem(
            label: 'Discover',
            icon: CupertinoIcons.book,
          ),
          buildBottomNavBarItem(
            label: 'Profile',
            icon: CupertinoIcons.person,
          ),
        ],
      ),
      body: const HomeViewBody(),
    );
  }
}
