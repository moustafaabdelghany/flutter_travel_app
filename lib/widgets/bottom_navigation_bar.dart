
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavigationBarTravel extends StatefulWidget {
  @override
  _BottomNavigationBarTravelState createState() =>
      _BottomNavigationBarTravelState();
}

class _BottomNavigationBarTravelState extends State<BottomNavigationBarTravel> {
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
    return Container(
      height:68,
      decoration: BoxDecoration(color: Colors.black, boxShadow: [
        BoxShadow(
            color: Colors.white.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 55,
            offset: Offset(0, 5))
      ]),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SizedBox(
              child: _selectedIndex == 0
                  ? new SvgPicture.asset('assets/svg/icon_location.svg',fit: BoxFit.contain,)
                  : new SvgPicture.asset('assets/svg/icon_location.svg',fit: BoxFit.contain,),
            ),
            title: Text('location'),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? new SvgPicture.asset('assets/svg/icon_time.svg',fit: BoxFit.contain)
                : new SvgPicture.asset('assets/svg/icon_time.svg',fit: BoxFit.contain),
            title: Text('time'),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? new SvgPicture.asset('assets/svg/icon_Group.svg')
                : new SvgPicture.asset('assets/svg/icon_Group.svg'),
            title: Text('Group'),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? new SvgPicture.asset(
                'assets/svg/icon_list.svg')
                : new SvgPicture.asset('assets/svg/icon_list.svg'),
            title: Text('list'),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 4
                ? new SvgPicture.asset('assets/svg/icon_page.svg')
                : new SvgPicture.asset('assets/svg/icon_page.svg'),
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
    );
  }
}