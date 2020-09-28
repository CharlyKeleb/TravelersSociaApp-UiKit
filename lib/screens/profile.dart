import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:travel_social_app/profile/activities.dart';
import 'package:travel_social_app/profile/myfriends.dart';
import 'package:travel_social_app/profile/myprofile.dart';
import 'package:travel_social_app/profile/travels.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  PageController _pageController;
  int _page = 0;
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: TextStyle(
            fontFamily: 'Ubuntu-Regular',
            fontSize: 15,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      Feather.user,
                      color: 0 == selectedItem ? Colors.white : Colors.black,
                      size: 15,
                    ),
                  ),
                ),
              ),
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
                      Feather.users,
                      color: 1 == selectedItem ? Colors.white : Colors.black,
                      size: 15,
                    ),
                  ),
                ),
              ),
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
                      Feather.archive,
                      color: 2 == selectedItem ? Colors.white : Colors.black,
                      size: 15,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    navigationTapped(3);
                  });
                  selectItem(3);
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: 3 == selectedItem ? Colors.red : Colors.grey[300],
                    ),
                    child: Center(
                      child: Icon(
                        Feather.clock,
                        color: 3 == selectedItem ? Colors.white : Colors.black,
                        size: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: _pageController,
                onPageChanged: onPageChanged,
                children: [
                  MyProfile(),
                  MyFriends(),
                  Activity(),
                  Travels(),
                ],
              ),
            ),
          )
        ],
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
