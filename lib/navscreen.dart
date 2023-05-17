import 'package:flutter/material.dart';
import 'package:portfolio/appbar.dart';
import 'package:portfolio/homepage.dart';
import 'package:portfolio/responsive.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    MyHomePage(),
    Scaffold(),
  ];

  final List<String> _icons = [
    "Home",
    'TBD',
  ];

  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        key: _scaffoldKey,

        drawer: !Responsive.isDesktop(context)
            ? Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    // const DrawerHeader(
                    //   child: Text('Drawer Header'),
                    //   decoration: BoxDecoration(
                    //     color: Colors.blue,
                    //   ),
                    // ),
                    ListTile(
                      title: const Text('About MLSA'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Out Team'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Upcoming Events'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Contact'),
                      onTap: () {},
                    ),
                  ],
                ),
              )
            : null,
        appBar: Responsive.isDesktop(context)
            ? PreferredSize(
                preferredSize: Size(screenSize.width, 100),
                child: CustomAppBar(
                    icons: _icons,
                    selectedIndex: _selectedIndex,
                    onTap: (index) {
                      setState(() => _selectedIndex = index);
                    }),
              )
            : PreferredSize(
                preferredSize: Size(screenSize.width, 100),
                child: Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(
                          'assets/microsoft.png',
                          width: screenSize.width * 0.3,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(16),
                        child: IconButton(
                          icon: const Icon(
                            Icons.menu,
                            size: 30,
                            color: Colors.black87,
                          ),
                          onPressed: () {
                            _scaffoldKey.currentState!.openDrawer();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
        // body:TabBarView(physics: const NeverScrollableScrollPhysics(),children: _screens,),
        // Try TabBarView() with web and without setState()

        body: IndexedStack(
          index: _selectedIndex,
          children: _screens,
        ),
      ),
    );
  }
}
