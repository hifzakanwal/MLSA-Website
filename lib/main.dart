import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset(
              'assets/microsoft.png',
              height: screenHeight * 0.05,
              width: screenWidth * 0.3,
            ),
            const Text(
              "Abbottabad University of Science and Technology",
              style: TextStyle(color: Colors.black87),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.2),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black87,
              ),
              onPressed: () {
                _scaffoldKey.currentState!.openEndDrawer();
              },
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
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
              title: Text('About MLSA'),
              onTap: () {
                // TODO: Handle drawer item tap
              },
            ),
            ListTile(
              title: Text('Out Team'),
              onTap: () {
                // TODO: Handle drawer item tap
              },
            ),
            ListTile(
              title: Text('Upcoming Events'),
              onTap: () {
                // TODO: Handle drawer item tap
              },
            ),
            ListTile(
              title: Text('Contact'),
              onTap: () {
                // TODO: Handle drawer item tap
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: screenHeight * 1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/img1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.2),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          'Learn | Develop | Make an Impact',
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Join"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "Upcoming Events",
                  style: TextStyle(color: Colors.black87, fontSize: 72),
                ),
                Container(
                  margin: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(
                        'assets/img1.png',
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'MLSA Theme Post Card Demo',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'May 20, 2023, 6:00 PM',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                              ),
                            ),
                            SizedBox(height: 16.0),
                            Text(
                              'Join us for a demonstration of how to create a beautiful MLSA theme post card for an upcoming event in Flutter.',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                              ),
                            ),
                            SizedBox(height: 16.0),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('RSVP'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(
                        'assets/img1.png',
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'MLSA Theme Post Card Demo',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              'May 20, 2023, 6:00 PM',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                              ),
                            ),
                            SizedBox(height: 16.0),
                            Text(
                              'Join us for a demonstration of how to create a beautiful MLSA theme post card for an upcoming event in Flutter.',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                              ),
                            ),
                            SizedBox(height: 16.0),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('RSVP'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "About Lead",
                  style: TextStyle(color: Colors.black87, fontSize: 72),
                ),
                Container(
                  margin: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/hifza.jpg',
                          height: screenHeight*0.3,
                          
                          fit: BoxFit.cover,
                        ),
                        Text(
                          '𝛼 MLSA Hifza Kanwal',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'MLSA AUST Lead',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[700],
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: ()async{
                                const url = 'https://github.com/hifzakanwal'; // Replace with your GitHub account URL
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Image.asset("assets/github.png"),
                            ),
                            SizedBox(width: screenWidth*0.02),
                            GestureDetector(
                              onTap: ()async{
                                const url = 'https://www.linkedin.com/in/hifza-kanwal/'; // Replace with your GitHub account URL
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Image.asset("assets/linkedin.png"),
                            ),
                            SizedBox(width: screenWidth*0.02),
                            GestureDetector(
                              onTap: ()async{
                                // const url = 'https://github.com/hifzakanwal'; // Replace with your GitHub account URL
                                // if (await canLaunch(url)) {
                                //   await launch(url);
                                // } else {
                                //   throw 'Could not launch $url';
                                // }
                              },
                              child: Image.asset("assets/insta.png"),
                            ),
                            SizedBox(width: screenWidth*0.02),
                            GestureDetector(
                              onTap: ()async{
                                // const url = 'https://www.linkedin.com/in/hifza-kanwal/'; // Replace with your GitHub account URL
                                // if (await canLaunch(url)) {
                                //   await launch(url);
                                // } else {
                                //   throw 'Could not launch $url';
                                // }
                              },
                              child: Image.asset("assets/fb.png"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Text(
                  "MLSA AUST",
                  style: TextStyle(color: Colors.black87, fontSize: 72),
                ),
                Container(
                  margin: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/mlsa.png',
                          height: screenHeight*0.2,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'MLSA AUST',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Phone No.: ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                              ),
                            ),
                            Text(
                              '0349-6156889',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Location: ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              'CS Dept AUST',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Email: ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              'hifzakanwal75@gmail.com',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: ()async{
                                const url = ''; // Replace with your GitHub account URL
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Image.asset("assets/github.png"),
                            ),
                            SizedBox(width: screenWidth*0.02),
                            GestureDetector(
                              onTap: ()async{
                                const url = ''; // Replace with your LinkedIn  account URL
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Image.asset("assets/linkedin.png"),
                            ),
                            SizedBox(width: screenWidth*0.02),
                            GestureDetector(
                              onTap: ()async{
                                const url = ''; // Replace with your intsa  account URL
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Image.asset("assets/insta.png"),
                            ),
                            SizedBox(width: screenWidth*0.02),
                            GestureDetector(
                              onTap: ()async{
                                const url = ''; // Replace with your fb  account URL
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Image.asset("assets/fb.png"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Column(
            //   children: [
            //     Text(
            //       "Our Team",
            //       style: TextStyle(color: Colors.black87, fontSize: 100),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.all(16.0),
            //       child: Row(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           // Expanded(
            //           //   child: Row(
            //           //     children: [
            //           //       Container(
            //           //         margin: EdgeInsets.all(16.0),
            //           //         decoration: BoxDecoration(
            //           //           color: Colors.white,
            //           //           borderRadius: BorderRadius.circular(16.0),
            //           //           boxShadow: [
            //           //             BoxShadow(
            //           //               color: Colors.grey.withOpacity(0.5),
            //           //               spreadRadius: 3,
            //           //               blurRadius: 7,
            //           //               offset: Offset(0, 3),
            //           //             ),
            //           //           ],
            //           //         ),
            //           //
            //           //       )
            //           //     ],
            //           //   ),
            //           // )
            //
            //         ],
            //       ),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
        bottomNavigationBar: Container(
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border(
              top: BorderSide(width: 1.0, color: Colors.white60),
            ),
          ),
          height: screenHeight*0.1,
          child: Center(
            child: Text(
              '© MLSA AUST. All rights reserved.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[800],
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        )

    );
  }
}
