import 'package:flutter/material.dart';
import 'package:flutter_talk/presentation/ui/screens/setting_screen.dart';
import 'package:get/get.dart';
import '../../state_holders/bottom_nab_controller.dart';
import 'home_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  final List<Widget> _screen = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainBottomNavController>(builder: (controller) {
      return Scaffold(
        body: _screen[controller.selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: const Color(0xFF24786D),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: controller.selectedIndex,
          onTap: controller.changeScreen,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.call,
                ),
                label: "Calls"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.contacts_outlined,
                ),
                label: "Contacts"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: "Settings"),
          ],
        ),
      );
    });
  }
}
