// ignore_for_file: library_private_types_in_public_api, lines_longer_than_80_chars

import 'package:admin_dashboard/core/theme/app_colors.dart';
import 'package:admin_dashboard/core/widgets/app_bar/app_bar.dart';
import 'package:flutter/material.dart';

///
class DashboardPage extends StatefulWidget {
  ///
  const DashboardPage({super.key});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0;

  void _onDestinationSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: const Color.fromARGB(255, 226, 221, 221),
            minWidth: 120,
            useIndicator: true,
            indicatorColor: LightColor.hintColor,
            selectedIndex: _selectedIndex,
            onDestinationSelected: _onDestinationSelected,
            unselectedIconTheme: const IconThemeData(
              color: Color.fromARGB(
                255,
                110,
                110,
                110,
              ),
            ),
            unselectedLabelTextStyle: const TextStyle(
              color: Color.fromARGB(
                255,
                110,
                110,
                110,
              ),
              fontWeight: FontWeight.normal,
            ),
            selectedLabelTextStyle: const TextStyle(
              color: LightColor.onBackground,
              fontWeight: FontWeight.bold,
            ),
            selectedIconTheme: const IconThemeData(
              color: LightColor.onBackground,
            ),
            labelType: NavigationRailLabelType.all,
            leading: SizedBox(
              height: 120,
              child: Image.asset(
                'assets/images/chair.png',
                height: 50,
                width: 50,
              ),
            ),
            destinations: const [
              NavigationRailDestination(
                icon: Icon(
                  Icons.dashboard_rounded,
                ),
                label: Text(
                  'Dashboard',
                ),
              ),
              NavigationRailDestination(
                icon: Icon(
                  Icons.category,
                ),
                label: Text(
                  'Categories',
                ),
              ),
              NavigationRailDestination(
                icon: Icon(
                  Icons.production_quantity_limits_sharp,
                ),
                label: Text(
                  'Products',
                ),
              ),
              NavigationRailDestination(
                icon: Icon(
                  Icons.people,
                ),
                label: Text(
                  'Customers',
                ),
              ),
            ],
          ),
          const VerticalDivider(
            thickness: 5,
            width: 5,
          ),
          const Expanded(
            child: SearchBar(),
          ),
        ],
      ),
    );
  }
}
