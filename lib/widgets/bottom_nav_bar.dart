import 'package:dailyflix/screens/home_screen.dart';
import 'package:dailyflix/screens/hot_and_more_screen.dart';
import 'package:dailyflix/screens/search_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: Container(
          color: Colors.black,
          height: 70,
          child: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home_filled, color: Colors.white),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.search, color: Colors.white),
                text: 'Search',
              ),
              Tab(
                icon:
                    Icon(Icons.video_collection_outlined, color: Colors.white),
                text: 'New & Hot',
              )
            ],
            indicatorColor: Colors.transparent,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            
          ),
        ),
        body: const TabBarView(
          children: [HomeScreen(), SearchScreen(), HotAndMoreScreen()],
        ),
      ),
    );
  }
}
