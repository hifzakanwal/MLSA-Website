import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

import 'dummydata.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Responsive(
                desktop: Desktopbanner(screenHeight),
                mobile: Mobilebanner(screenHeight, context),
                tablet: TabletBanner(screenHeight, context),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadingMain("Upcoming Events", screenWidth),
                    Responsive(
                      mobile: Column(children: [...data]),
                      tablet: SizedBox(
                        height: 480,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return data[index];
                            },
                            separatorBuilder: (context, index) => SizedBox(
                                  width: 5,
                                ),
                            itemCount: data.length),
                      ),
                      desktop: SizedBox(
                        height: 480,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return data[index];
                            },
                            separatorBuilder: (context, index) => SizedBox(
                                  width: 5,
                                ),
                            itemCount: data.length),
                      ),
                    ),
                    Responsive(
                      mobile: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HeadingMain("About Lead", screenWidth),
                            Author(
                                screenHeight: screenHeight,
                                screenWidth: screenWidth),
                            HeadingMain('MLSA AUST', screenWidth),
                            Sponser(screenHeight, screenWidth),
                          ]),
                      tablet: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HeadingMain("About Lead", screenWidth),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Author(
                                      screenHeight: screenHeight,
                                      screenWidth: screenWidth),
                                ),
                              ]),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HeadingMain('MLSA AUST', screenWidth),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Sponser(screenHeight, screenWidth),
                                ),
                              ])
                        ],
                      ),
                      desktop: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HeadingMain("About Lead", screenWidth),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Author(
                                      screenHeight: screenHeight,
                                      screenWidth: screenWidth),
                                ),
                              ]),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HeadingMain('MLSA AUST', screenWidth),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Sponser(screenHeight, screenWidth),
                                ),
                              ])
                        ],
                      ),
                    ),
                  ],
                ),
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
            border: const Border(
              top: BorderSide(width: 1.0, color: Colors.white60),
            ),
          ),
          height: screenHeight * 0.1,
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
        ));
  }

  Stack TabletBanner(double screenHeight, BuildContext context) {
    return Stack(
      children: [
        Container(
          height: screenHeight * 0.4,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img1.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          top: screenHeight * 0.07,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Learn | Develop | Make an Impact',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    launchUrl(
                      Uri.parse("https://forms.office.com/r/nig5nGCdY0"),
                    );
                  },
                  child: const Text("Join"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Stack Mobilebanner(double screenHeight, BuildContext context) {
    return Stack(
      children: [
        Container(
          height: screenHeight * 0.4,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img1.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
          ),
        ),
        Positioned(
          top: screenHeight * 0.07,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Learn | Develop | Make an Impact',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    launchUrl(
                      Uri.parse("https://forms.office.com/r/nig5nGCdY0"),
                    );
                  },
                  child: const Text("Join"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Stack Desktopbanner(double screenHeight) {
    return Stack(
      children: [
        Container(
          height: screenHeight * 1,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img1.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.2),
          child: Center(
            child: Column(
              children: [
                const Text(
                  'Learn | Develop | Make an Impact',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Join"),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container Sponser(double screenHeight, double screenWidth) {
    return Container(
      width: screenWidth >= 800 ? screenWidth / 2.3 : double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Image.asset(
              'assets/mlsa.png',
              height: screenHeight * 0.25,
              fit: BoxFit.cover,
            ),
            const Text(
              'MLSA AUST',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
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
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Location: ',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold),
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
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Email: ',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold),
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
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () async {
                    const url = ''; // Replace with your GitHub account URL
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Image.asset("assets/github.png"),
                ),
                SizedBox(width: screenWidth * 0.02),
                GestureDetector(
                  onTap: () async {
                    const url = ''; // Replace with your LinkedIn  account URL
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Image.asset("assets/linkedin.png"),
                ),
                SizedBox(width: screenWidth * 0.02),
                GestureDetector(
                  onTap: () async {
                    const url = ''; // Replace with your intsa  account URL
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Image.asset("assets/insta.png"),
                ),
                SizedBox(width: screenWidth * 0.02),
                GestureDetector(
                  onTap: () async {
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
    );
  }

  Padding HeadingMain(String text, sc) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontSize: sc >= 800 ? 45 : 30),
      ),
    );
  }
}

class Author extends StatelessWidget {
  const Author({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth >= 800 ? screenWidth / 2.3 : double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Image.asset(
              'assets/hifza.jpg',
              height: screenHeight * 0.3,
              fit: BoxFit.cover,
            ),
            const Text(
              '𝛼 MLSA Hifza Kanwal',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'MLSA AUST Lead',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () async {
                    const url =
                        'https://github.com/hifzakanwal'; // Replace with your GitHub account URL
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Image.asset("assets/github.png"),
                ),
                SizedBox(width: screenWidth * 0.02),
                GestureDetector(
                  onTap: () async {
                    const url =
                        'https://www.linkedin.com/in/hifza-kanwal/'; // Replace with your GitHub account URL
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Image.asset("assets/linkedin.png"),
                ),
                SizedBox(width: screenWidth * 0.02),
                GestureDetector(
                  onTap: () async {
                    // const url = 'https://github.com/hifzakanwal'; // Replace with your GitHub account URL
                    // if (await canLaunch(url)) {
                    //   await launch(url);
                    // } else {
                    //   throw 'Could not launch $url';
                    // }
                  },
                  child: Image.asset("assets/insta.png"),
                ),
                SizedBox(width: screenWidth * 0.02),
                GestureDetector(
                  onTap: () async {
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
    );
  }
}
