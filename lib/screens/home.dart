import 'package:flutter/material.dart';
import 'package:map_app/screens/liveStreamScreen.dart';
import 'package:map_app/screens/mapScreen.dart';
import 'package:map_app/screens/settingScreen.dart';
import 'package:map_app/screens/resultScreen.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  int selectedIndex = 0;

  onItemClicked(int index) {
    selectedIndex = index;
    _tabController!.index = selectedIndex;
  }

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: const [
          MapScreen(),
          LiveStreamScreen(),
          ResultScreen(),
          SettingScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: "Map",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: "Live Stream",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search results",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Setting",
          ),
        ],

        unselectedItemColor: Colors.white54,
        selectedItemColor:Colors.white,
        backgroundColor:Colors.black,
        type:BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(fontSize: 14),
        showUnselectedLabels: true,
        currentIndex:selectedIndex,
        onTap:onItemClicked,
      ),
    );
  }
}
