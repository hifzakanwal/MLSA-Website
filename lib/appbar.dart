import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/tabbar.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.icons,
      required this.selectedIndex,
      required this.onTap});

  final List<String> icons;
  final int selectedIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.0,
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/microsoft.png',
              width: MediaQuery.of(context).size.width * 0.14,
              fit: BoxFit.contain,
            ),
          ),
          Spacer(),
          SizedBox(
            height: double.infinity,
            width: MediaQuery.of(context).size.width * 0.3,
            child: CustomTabBar(
              icons: icons,
              selectedIndex: selectedIndex,
              onTap: onTap,
              isBottomIndicator: true,
            ),
          ),
          Spacer(),

          // Expanded(
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     children: [
          //       UserCard(user: currentUser),
          //       const SizedBox(width: 12.0),

          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
