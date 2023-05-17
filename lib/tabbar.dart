import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    Key? key,
    required this.icons,
    required this.selectedIndex,
    required this.onTap,
    this.isBottomIndicator = false,
  }) : super(key: key);

  final List<String> icons;
  final int selectedIndex;
  final Function(int) onTap;
  final bool isBottomIndicator;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
        border: isBottomIndicator
            ? const Border(
                bottom: BorderSide(
                  color: Color.fromARGB(255, 66, 66, 66),
                  width: 2.0,
                ),
              )
            : const Border(
                top: BorderSide(
                  color: Color.fromARGB(255, 66, 66, 66),
                  width: 2.0,
                ),
              ),
      ),
      indicatorSize: TabBarIndicatorSize.label,
      onTap: onTap,
      tabs: icons
          .asMap()
          .map(
            (i, e) => MapEntry(
              i,
              Tab(
                iconMargin: EdgeInsets.only(bottom: 5, top: 5),
                icon: Text(
                  e,
                  style: TextStyle(
                      color: i == selectedIndex
                          ? Colors.blue
                          : Color.fromARGB(223, 65, 65, 65),
                      // size: 30.0,
                      fontSize: 20),
                ),
              ),
            ),
          )
          .values
          .toList(),
    );
  }
}
