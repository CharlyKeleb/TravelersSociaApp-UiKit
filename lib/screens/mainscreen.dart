import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:travel_social_app/pages/explore.dart';
import 'package:travel_social_app/pages/newsfeed.dart';
import 'package:travel_social_app/pages/trips.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController _pageController;
  int _page = 0;
  int selectedItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: [
          NewsFeed(),
          Explore(),
          Trips(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0, left: 15),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    navigationTapped(0);
                  });
                  selectItem(0);
                },
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: 0 == selectedItem ? Colors.red : Colors.grey[300],
                  ),
                  child: Center(
                    child: Icon(
                      Feather.home,
                      color: 0 == selectedItem ? Colors.white : Colors.black,
                      size: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              InkWell(
                onTap: () {
                  setState(() {
                    navigationTapped(1);
                  });
                  selectItem(1);
                  print(_page);
                },
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: 1 == selectedItem ? Colors.red : Colors.grey[300],
                  ),
                  child: Center(
                    child: Icon(
                      Feather.compass,
                      color: 1 == selectedItem ? Colors.white : Colors.black,
                      size: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              InkWell(
                onTap: () {
                  setState(() {
                    navigationTapped(2);
                  });
                  selectItem(2);
                },
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: 2 == selectedItem ? Colors.red : Colors.grey[300],
                  ),
                  child: Center(
                    child: Icon(
                      Feather.clipboard,
                      color: 2 == selectedItem ? Colors.white : Colors.black,
                      size: 15,
                    ),
                  ),
                ),
              ),
              Spacer(),
              InkWell(
                onTap: ()=> print('Add Story'),
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Icon(
                        Feather.plus,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  selectItem(page) {
    setState(() {
      selectedItem = page;
    });
  }
}
