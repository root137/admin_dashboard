import 'package:admin_dashboard/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

///products page
class ProductsPage extends StatelessWidget {
  ///
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          'PRODUCTS PAGE',
          style: TextStyle(
            color: LightColor.onBackground,
            fontSize: 20,
            letterSpacing: 2,
            fontWeight: FontWeight.w400,
            fontFamily: 'BebasNeue',
          ),
        ),
      ),
    );
  }
}
