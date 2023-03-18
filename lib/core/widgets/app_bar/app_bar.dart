import 'package:admin_dashboard/core/constants/routes_constants.dart';
import 'package:admin_dashboard/core/theme/app_colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

///search bar
class SearchBar extends StatelessWidget {
  ///
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        onPressed: () {
                          AutoRouter.of(context).pop(RouteConstants.login);
                        },
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
                color: LightColor.background,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
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
    );
  }
}
