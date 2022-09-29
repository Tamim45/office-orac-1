import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/AppCard.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.white,
        ),
        home: const RootPage());
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: [
                Row(children: <Widget>[
                  Image.asset('images/1.png'),
                  const Expanded(child: SizedBox()),
                  TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white)),
                      child: Image.asset('images/2.png')),
                  const SizedBox(width: 5),
                  TextButton(
                      onPressed: () {}, child: Image.asset('images/3.png')),
                ]),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xffDCDEE4),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                        prefixIcon: Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: Icon(
                            Icons.search,
                          ),
                        ),
                        border: InputBorder.none,
                        labelText: 'Search your favourite food'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(alignment: Alignment.bottomLeft, children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset('images/4.png')),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffFB931C)),
                      onPressed: () {},
                      child: Text(
                        "Order Now",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.white, fontSize: 14),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Category',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Color(0xff120F16), fontSize: 16),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    TextButton(
                      onPressed: () {  },
                      child: Text(
                        'View All',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Color(0xffFB931C), fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Image.asset('images/5.png'),
                          Text(
                            'Fast Food',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color(0xff707070), fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          Image.asset('images/6.png'),
                          Text(
                            'Biriyani',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color(0xff707070), fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          Image.asset('images/7.png'),
                          Text(
                            'Juice',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color(0xff707070), fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          Image.asset('images/8.png'),
                          Text(
                            'Snack',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color(0xff707070), fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          Image.asset('images/8.png'),
                          Text(
                            'Snack',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color(0xff707070), fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Most Popular',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Colors.black, fontSize: 16),
                              fontWeight: FontWeight.bold),
                        ),
                        Image.asset('images/Icon metro-fire.png'),
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    TextButton(
                      onPressed: () {  },
                      child: Text(
                        'View All',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: Color(0xffFB931C), fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 1,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      // Padding(
                      //   padding: const EdgeInsets.all(16.0),
                         AppCard(),
                         AppCard(),
                         AppCard(),
                         AppCard(),
                         AppCard(),
                    ],
                  ),
                  ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange,
          child: Image.asset('images/9.png'),
          onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        safeAreaValues: const SafeAreaValues(bottom: false),
        gapLocation: GapLocation.center,
        activeIndex: currentpage,
        itemCount: bottomItems.length,
        onTap: (int) {},
        tabBuilder: (index, active) {
          return BottomNavWidget(
            active: active,
            icon: bottomItems[index]['icon'] as IconData,
            title: bottomItems[index]['title'] as String,
          );
        },
      ),
    );
  }

  List<Map<String, dynamic>> bottomItems = [
    {'icon': Icons.favorite, 'title': 'Favourite'},
    {'icon': Icons.person, 'title': 'Profile'},
  ];
}

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.active,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.grey,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
