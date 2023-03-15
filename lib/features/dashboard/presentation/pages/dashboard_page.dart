// ignore_for_file: library_private_types_in_public_api, lines_longer_than_80_chars

import 'package:admin_dashboard/core/theme/app_colors.dart';
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
            minWidth: 100,
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
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: const Color.fromARGB(255, 226, 221, 221),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            'Admin Dashboard',
                            style: TextStyle(
                              color: LightColor.onBackground,
                              fontSize: 28,
                              letterSpacing: 2,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'BebasNeue',
                            ),
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: ' Search...',
                                  border: InputBorder.none,
                                  suffixIcon: Icon(Icons.search),
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 15,
                                    horizontal: 20,
                                  ),
                                  hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 186, 184, 184),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  prefixIcon: Icon(
                                    Icons.filter_list,
                                    size: 24,
                                    color: Color.fromARGB(255, 186, 184, 184),
                                  ),
                                  filled: false,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: LightColor.onBackground,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.logout,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'MEN AT WORK!!!!',
                          style: TextStyle(
                            color: LightColor.onBackground,
                            fontSize: 20,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'BebasNeue',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
