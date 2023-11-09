import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

PersistentTabController _controller = PersistentTabController(initialIndex: 0);

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      navBarStyle: NavBarStyle.style3,
    );
  }

  List<Widget> _buildScreens() {
    return [
      screen1(),
      screen2(),
      screen3(),
      screen4(),
      screen5(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home_filled),
        activeColorPrimary: Color(0xff024062),
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.grid_view_outlined),
        activeColorPrimary: Color(0xff024062),
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.calendar_month_outlined),
        activeColorPrimary: Color(0xff024062),
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.message_outlined),
        activeColorPrimary: Color(0xff024062),
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.person),
        activeColorPrimary: Color(0xff024062),
        inactiveColorPrimary: Colors.black,
      ),
    ];
  }

  Widget screen1() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Align(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 40, 330, 0),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      image: Image.asset(
                        'assets/images/sushma_shukla.jpeg',
                      ).image,
                    ),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(-1.00, 1.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(75, 40, 0, 0),
                child: Text(
                  'Good Morning',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    color: Color.fromARGB(255, 113, 109, 109),
                  ),
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(-1.00, 1.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(75, 60, 0, 0),
                child: Text(
                  'Sushma Shukla',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Roboto',
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(1.00, 1.00),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 60, 0),
                child: SvgPicture.asset(
                  'assets/svg_icons/notificationBell.svg',
                  width: 30,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(1.00, 1.00),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 50, 20, 0),
                child: SvgPicture.asset(
                  'assets/svg_icons/badge.svg',
                  width: 30,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.00, 0.00),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 100, 20, 120),
                child: SearchBar(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all(Colors.grey[50]),
                  leading: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  hintText: 'Search',
                  hintStyle: MaterialStateProperty.all(
                    const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                  trailing: [
                    IconButton(
                      icon: const Icon(Icons.filter_alt_outlined,
                          color: Colors.grey),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(1.00, 1.00),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 180, 20, 0),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/salon.png',
                        fit: BoxFit.cover,
                        height: 250,
                        width: double.infinity,
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.00, 1.00),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 160, vertical: 220),
                        child: smooth_page_indicator.SmoothPageIndicator(
                          controller: PageController(initialPage: 0),
                          count: 3,
                          axisDirection: Axis.horizontal,
                          effect:
                              const smooth_page_indicator.ExpandingDotsEffect(
                            activeDotColor: Colors.blue,
                            expansionFactor: 3,
                            spacing: 8,
                            radius: 10,
                            dotWidth: 7,
                            dotHeight: 8,
                            paintStyle: PaintingStyle.fill,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 1.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(20, 60, 0, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            child: Text(
                              '30% OFF',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: AlignmentDirectional(-1.0, 1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 100, 0, 0),
                        child: Text(
                          "Today's Special",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: AlignmentDirectional(-1.0, 1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 135, 0, 0),
                        child: Text(
                          "Get a discount for every service order!",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: AlignmentDirectional(-1.0, 1.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 155, 0, 0),
                        child: Text(
                          "only valid for today!",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(-1.00, 1.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 450, 0, 0),
                child: Text(
                  'Featured Services',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(1.00, -1.00),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 458, 20, 0),
                child: smooth_page_indicator.SmoothPageIndicator(
                  controller: PageController(initialPage: 0),
                  count: 3,
                  axisDirection: Axis.horizontal,
                  effect: const smooth_page_indicator.ExpandingDotsEffect(
                    activeDotColor: Colors.blue,
                    expansionFactor: 3,
                    spacing: 8,
                    radius: 10,
                    dotWidth: 7,
                    dotHeight: 8,
                    paintStyle: PaintingStyle.fill,
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-1.00, -1.00),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 480, 0, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        SizedBox(
                          width: 150,
                          height: 174,
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 5,
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 335,
                                  height: 110,
                                  child: Image.asset(
                                    'assets/images/beardtrimming.jpg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                // SizedBox(
                                //   height: 16,
                                // ),
                                const Stack(children: [
                                  Align(
                                    alignment: AlignmentDirectional(-0.6, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 0, 0),
                                      child: Text(
                                        'Beard Trimming',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-0.8, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 30, 0, 0),
                                      child: Text(
                                        'Rs. 200',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1, 1),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 30, 25, 0),
                                      child: Text(
                                        'Rs. 300',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                    ),
                                  ),
                                ])
                              ],
                            ),
                            // margin: EdgeInsets.all(10),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          height: 174,
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 5,
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 335,
                                  height: 110,
                                  child: Image.asset(
                                    'assets/images/hairstraightener.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                // SizedBox(
                                //   height: 16,
                                // ),
                                const Stack(children: [
                                  Align(
                                    alignment: AlignmentDirectional(-0.6, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 0, 0),
                                      child: Text(
                                        'Hair Straightener',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-0.8, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 30, 0, 0),
                                      child: Text(
                                        'Rs. 1,000',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1, 1),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 30, 15, 0),
                                      child: Text(
                                        'Rs.2,100',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                    ),
                                  ),
                                ])
                              ],
                            ),
                            // margin: EdgeInsets.all(10),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          height: 174,
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 5,
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 335,
                                  height: 110,
                                  child: Image.asset(
                                    'assets/images/haircut.jpg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                // SizedBox(
                                //   height: 16,
                                // ),
                                const Stack(children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 0, 0),
                                      child: Text(
                                        'Hair Cut',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-0.8, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 30, 0, 0),
                                      child: Text(
                                        'Rs. 400',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1, 1),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 30, 25, 0),
                                      child: Text(
                                        'Rs. 600',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
                                      ),
                                    ),
                                  ),
                                ])
                              ],
                            ),
                            // margin: EdgeInsets.all(10),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(-1.00, 1.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 670, 0, 0),
                child: Text(
                  'Category',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(1.00, -1.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 670, 20, 0),
                child: Text(
                  'View All',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-1, 0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 700, 20, 0),
                child: GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 120,
                            height: 120,
                            child: Card(
                              shadowColor: Colors.white,
                              elevation: 0,
                              color: Colors.grey[100],
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 70,
                                    height: 110,
                                    child: SvgPicture.asset(
                                        'assets/svg_icons/scissors.svg'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 120,
                            height: 120,
                            child: Card(
                              shadowColor: Colors.white,
                              elevation: 0,
                              color: Colors.grey[100],
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 70,
                                    height: 110,
                                    child:
                                        Image.asset('assets/images/makeup.png'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 120,
                            height: 120,
                            child: Card(
                              shadowColor: Colors.white,
                              elevation: 0,
                              color: Colors.grey[100],
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 70,
                                    height: 110,
                                    child: Image.asset(
                                        'assets/images/straightening.png'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(35, 5, 0, 0),
                              child: Text(
                                'Hair Cut',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(160, 5, 0, 0),
                              child: Text(
                                'Makeup',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(1, 1),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(265, 5, 20, 0),
                              child: Text(
                                'Straightening',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 850, 20, 0),
                child: GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 120,
                            height: 120,
                            child: Card(
                              shadowColor: Colors.white,
                              elevation: 0,
                              color: Colors.grey[100],
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 70,
                                    height: 110,
                                    child:
                                        Image.asset('assets/images/nail.png'),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 120,
                            height: 120,
                            child: Card(
                              shadowColor: Colors.white,
                              elevation: 0,
                              color: Colors.grey[100],
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 70,
                                    height: 110,
                                    child: Image.asset(
                                        'assets/images/massage.png'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 120,
                            height: 120,
                            child: Card(
                              shadowColor: Colors.white,
                              elevation: 0,
                              color: Colors.grey[100],
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 60,
                                    height: 110,
                                    child: Image.asset(
                                        'assets/images/beard-trimming.png'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(30, 5, 0, 0),
                              child: Text(
                                'Mani-Pedi',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(145, 5, 0, 0),
                              child: Text(
                                'Spa/Message',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(1, 1),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(250, 5, 10, 0),
                              child: Text(
                                'Beard Trimming',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(-1.00, 1.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 1020, 0, 0),
                child: Text(
                  'Most Popular Services',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Roboto',
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-1, 0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 1050, 0, 0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: GestureDetector(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 70,
                          height: 40,
                          child: Card(
                            color: Colors.blue,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                                child: Text('All',
                                    style: TextStyle(color: Colors.white))),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          height: 40,
                          child: Card(
                            color: Colors.blue[50],
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                              child: Text(
                                'Haircuts',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          height: 40,
                          child: Card(
                            color: Colors.blue[50],
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                              child: Text(
                                'Make up',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 110,
                          height: 40,
                          child: Card(
                            color: Colors.blue[50],
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                              child: Text(
                                'Manicure',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 110,
                          height: 40,
                          child: Card(
                            color: Colors.blue[50],
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                              child: Text(
                                'Pedicure',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 1105, 20, 10),
                child: Column(
                  children: [
                    SizedBox(
                      width: 800,
                      height: 170,
                      child: Card(
                        color: Colors.grey[50],
                        shadowColor: Colors.white,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20, 25, 0, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                  width: 110,
                                  height: 110,
                                  child: Image.asset(
                                    'assets/images/hairstraightener.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(140, 30, 0, 0),
                              child: Text(
                                'Tanishk Unisex Salon',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(140, 55, 0, 0),
                              child: Text(
                                'Janakpuri, New Delhi',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(1, -1),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 30, 10, 0),
                                child: Image.asset(
                                  'assets/images/badge_red.png',
                                  width: 25,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  135, 80, 0, 0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on_sharp,
                                    color: Colors.blue[800],
                                    size: 20,
                                  ),
                                  const Text(
                                    '1.2km',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  135, 115, 0, 0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star_half_outlined,
                                    color: Colors.yellow[800],
                                  ),
                                  const Text(
                                    '4.8  |  256 Reviews',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: 800,
                      height: 170,
                      child: Card(
                        color: Colors.grey[50],
                        shadowColor: Colors.white,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20, 25, 0, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                  width: 110,
                                  height: 110,
                                  child: Image.asset(
                                    'assets/images/hairstraightener.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(140, 30, 0, 0),
                              child: Text(
                                'Royal Touch Salon Studio',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(140, 55, 0, 0),
                              child: Text(
                                'Tilak Nagar, New Delhi',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(1, -1),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 30, 10, 0),
                                child: SvgPicture.asset(
                                  'assets/svg_icons/badge.svg',
                                  width: 25,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  135, 80, 0, 0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on_sharp,
                                    color: Colors.blue[800],
                                    size: 20,
                                  ),
                                  const Text(
                                    '800m',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  135, 115, 0, 0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star_half_outlined,
                                    color: Colors.yellow[800],
                                  ),
                                  const Text(
                                    '4.6  |  154 Reviews',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: 800,
                      height: 170,
                      child: Card(
                        color: Colors.grey[50],
                        shadowColor: Colors.white,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20, 25, 0, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: SizedBox(
                                  width: 110,
                                  height: 110,
                                  child: Image.asset(
                                    'assets/images/hairstraightener.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(140, 30, 0, 0),
                              child: Text(
                                'Hair Direction Salon',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            const Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(140, 55, 0, 0),
                              child: Text(
                                'Tilak Nagar, New Delhi',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(1, -1),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 30, 10, 0),
                                child: SvgPicture.asset(
                                  'assets/svg_icons/badge.svg',
                                  width: 25,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  135, 80, 0, 0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on_sharp,
                                    color: Colors.blue[800],
                                    size: 20,
                                  ),
                                  const Text(
                                    '900m',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  135, 115, 0, 0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star_half_outlined,
                                    color: Colors.yellow[800],
                                  ),
                                  const Text(
                                    '4.6  |  154 Reviews',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget screen2() {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
            child: Center(
              child: Text(
                'Category',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0, 0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
              child: GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 120,
                          height: 120,
                          child: Card(
                            shadowColor: Colors.white,
                            elevation: 0,
                            color: Colors.grey[100],
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 70,
                                  height: 110,
                                  child: SvgPicture.asset(
                                      'assets/svg_icons/scissors.svg'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 120,
                          height: 120,
                          child: Card(
                            shadowColor: Colors.white,
                            elevation: 0,
                            color: Colors.grey[100],
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 70,
                                  height: 110,
                                  child:
                                      Image.asset('assets/images/makeup.png'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 120,
                          height: 120,
                          child: Card(
                            shadowColor: Colors.white,
                            elevation: 0,
                            color: Colors.grey[100],
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 70,
                                  height: 110,
                                  child: Image.asset(
                                      'assets/images/straightening.png'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(35, 5, 0, 0),
                            child: Text(
                              'Hair Cut',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(160, 5, 0, 0),
                            child: Text(
                              'Makeup',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(1, 1),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(265, 5, 20, 0),
                            child: Text(
                              'Straightening',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
              child: GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 120,
                          height: 120,
                          child: Card(
                            shadowColor: Colors.white,
                            elevation: 0,
                            color: Colors.grey[100],
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 70,
                                  height: 110,
                                  child: Image.asset('assets/images/nail.png'),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 120,
                          height: 120,
                          child: Card(
                            shadowColor: Colors.white,
                            elevation: 0,
                            color: Colors.grey[100],
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 70,
                                  height: 110,
                                  child:
                                      Image.asset('assets/images/massage.png'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 120,
                          height: 120,
                          child: Card(
                            shadowColor: Colors.white,
                            elevation: 0,
                            color: Colors.grey[100],
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 60,
                                  height: 110,
                                  child: Image.asset(
                                      'assets/images/beard-trimming.png'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(30, 5, 0, 0),
                            child: Text(
                              'Mani-Pedi',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(145, 5, 0, 0),
                            child: Text(
                              'Spa/Message',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(1, 1),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(250, 5, 10, 0),
                            child: Text(
                              'Beard Trimming',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-1, 0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
              child: GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 120,
                          height: 120,
                          child: Card(
                            shadowColor: Colors.white,
                            elevation: 0,
                            color: Colors.grey[100],
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 70,
                                  height: 110,
                                  child:
                                      Image.asset('assets/images/hair-dye.png'),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 120,
                          height: 120,
                          child: Card(
                            shadowColor: Colors.white,
                            elevation: 0,
                            color: Colors.grey[100],
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 60,
                                  height: 110,
                                  child: Image.asset('assets/images/wax.png'),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 120,
                          height: 120,
                          child: Card(
                            shadowColor: Colors.white,
                            elevation: 0,
                            color: Colors.grey[100],
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 60,
                                  height: 110,
                                  child: Image.asset(
                                      'assets/images/sheet-mask.png'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 5, 0, 0),
                            child: Text(
                              'Hair Coloring',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(165, 5, 0, 0),
                            child: Text(
                              'Waxing',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(295, 5, 0, 0),
                            child: Text(
                              'Facial',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget screen3() {
    return const Scaffold();
  }

  Widget screen4() {
    return const Scaffold();
  }

  Widget screen5() {
    return const Scaffold();
  }
}
