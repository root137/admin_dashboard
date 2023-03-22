import 'package:flutter/material.dart';

///search bar widget
class SearchBarWidget extends StatelessWidget {
  ///constructor
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}
