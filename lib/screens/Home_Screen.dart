import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/models/beach_model.dart';
import 'package:flutter_app/models/popular_model.dart';
import 'package:flutter_app/models/recommended_model.dart';
import 'package:flutter_app/screens/selected_place_screen.dart';
import 'package:flutter_app/widgets/bottom_navigation_bar.dart';
import 'package:flutter_app/widgets/custom_tab_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Page Controller
  final _pageController = PageController(viewportFraction: 0.877);
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  var bottomNavStyle =
  GoogleFonts.lato(fontSize: 5, fontWeight: FontWeight.w100);
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          iconSize: 20,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? new SvgPicture.asset('assets/svg/icon_location.svg',fit: BoxFit.contain,)
                  : new SvgPicture.asset('assets/svg/icon_location.svg',fit: BoxFit.contain,),
              title: Text('location'),
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? SizedBox(
                  height: 20,
                  child: new SvgPicture.asset('assets/svg/icon_time.svg',fit: BoxFit.contain,height: 20,))
                  : SizedBox(
                  height: 20,
                  child: new SvgPicture.asset('assets/svg/icon_time.svg',fit: BoxFit.contain,height: 20,)),
              title: Text('time'),
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? SizedBox(
                  height: 70,
                  child: new SvgPicture.asset('assets/svg/icon_Group.svg',fit: BoxFit.contain,height: 70,))
                  : SizedBox(
                  height: 70,
                  child: new SvgPicture.asset('assets/svg/icon_Group.svg',fit: BoxFit.contain,height: 70,)),
              title: Text('Group'),
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 3
                  ? SizedBox(
                  height: 25,
                  child: new SvgPicture.asset('assets/svg/icon_list.svg',fit: BoxFit.contain,height: 25,))
                  : new SvgPicture.asset('assets/svg/icon_list.svg',fit: BoxFit.contain,height: 25,),
              title: Text('list'),
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 4
                  ? SizedBox(
                  height: 30 ,
                  child: new SvgPicture.asset('assets/svg/icon_page.svg',fit: BoxFit.contain,height: 25,))
                  : SizedBox(
                  height: 25 ,
                  child: new SvgPicture.asset('assets/svg/icon_page.svg',fit: BoxFit.contain,height: 25,)),
              title: Text('page'),
            )
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: Colors.black54,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 5,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
        ),
      ),
      backgroundColor: Colors.white30,
      body: SafeArea(
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              // Custom Navigation Drawer and Search Button
              Container(
                height: 57.6,
                margin: EdgeInsets.only(top: 28.8, left: 28.8, right: 28.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                   Container(
                      height: 57.6,
                      width: 57.6,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: Color(0x080a0928),
                      ),
                      child: SvgPicture.asset('assets/svg/icon_drawer.svg'),
                    ),
                    Container(
                      height: 57.6,
                      width: 57.6,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: Color(0x080a0928),
                      ),
                      child: SvgPicture.asset('assets/svg/icon_setting.svg'),
                    )
                  ],
                ),
              ),

              // Text Widget for Title
              Padding(
                padding: EdgeInsets.only(top: 25, left: 28.8),
                child: Text(
                  'Travel App\n',
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 45.6, fontWeight: FontWeight.w700),
                ),
              ),

              // Custom Tab bar with Custom Indicator
              Container(
                height: 30,
                margin: EdgeInsets.only(left: 14.4, top: 28.8),
                child: DefaultTabController(
                  length: 4,
                  child: TabBar(
                      labelPadding: EdgeInsets.only(left: 14.4, right: 14.4),
                      indicatorPadding:
                      EdgeInsets.only(left: 14.4, right: 14.4),
                      isScrollable: true,
                      labelColor: Color(0xFF000000),
                      unselectedLabelColor: Color(0xFF8a8a8a),
                      labelStyle: GoogleFonts.lato(
                          fontSize: 14, fontWeight: FontWeight.w700),
                      unselectedLabelStyle: GoogleFonts.lato(
                          fontSize: 14, fontWeight: FontWeight.w700),
                      indicator: RoundedRectangleTabIndicator(
                          color: Color(0xFF000000), weight: 2.4, width: 14.4),
                      tabs: [
                        Tab(
                          child: Container(
                            child: Text('Popular Attraction'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text(''),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text(''),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text(''),
                          ),
                        )
                      ]),
                ),
              ),

              // ListView widget with PageView
              // Recommendations Section
              Container(
                height: 218.4,
                margin: EdgeInsets.only(top: 16),
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    recommendations.length,
                        (int index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SelectedPlaceScreen(
                                recommendedModel: recommendations[index])));
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 28.8),
                        width: 333.6,
                        height: 218.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9.6),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(recommendations[index].image),
                          ),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              bottom: 19.2,
                              left: 19.2,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4.8),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                      sigmaY: 19.2, sigmaX: 19.2),
                                  child: Container(
                                    height: 36,
                                    padding: EdgeInsets.only(
                                        left: 16.72, right: 14.4),
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: <Widget>[
                                        SvgPicture.asset(
                                            'assets/svg/icon_location.svg'),
                                        SizedBox(
                                          width: 9.52,
                                        ),
                                        Text(
                                          recommendations[index].name,
                                          style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                              fontSize: 16.8),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Dots Indicator
              // Using SmoothPageIndicator Library
              Padding(
                padding: EdgeInsets.only(left: 28.8, top: 28.8),
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: recommendations.length,
                  effect: ExpandingDotsEffect(
                      activeDotColor: Color(0xFF8a8a8a),
                      dotColor: Color(0xFFababab),
                      dotHeight: 4.8,
                      dotWidth: 6,
                      spacing: 4.8),
                ),
              ),

              // Text Widget for Popular Categories
              Padding(
                padding: EdgeInsets.only(top: 48, left: 28.8, right: 28.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Popular Attraction',
                      style: GoogleFonts.playfairDisplay(
                        fontSize:20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF000000),
                      ),
                    ),
                    Text(
                      'Show All ',
                      style: GoogleFonts.lato(
                        fontSize: 13.8,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),

              // ListView for Popular Categories Section
              Container(
                margin: EdgeInsets.only(top: 33.6),
                height: 45.6,
                child: ListView.builder(
                  itemCount: populars.length,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(left: 28.8, right: 9.6),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 19.2),
                      height: 45.6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: Color(populars[index].color),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 19.2,
                          ),
                          Image.asset(
                            populars[index].image,
                            height: 16.8,
                          ),
                          SizedBox(
                            width: 19.2,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),

              // ListView for Beach Section
              Container(
                margin: EdgeInsets.only(top: 28.8, bottom: 16.8),
                height: 124.8,
                child: ListView.builder(
                  itemCount: beaches.length,
                  padding: EdgeInsets.only(left: 28.8, right: 12),
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 124.8,
                      width: 188.4,
                      margin: EdgeInsets.only(right: 16.8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: CachedNetworkImageProvider(beaches[index].image),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}