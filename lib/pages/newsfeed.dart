import 'package:flutter/material.dart';
import 'package:travel_social_app/widgets/appbar.dart';
import 'package:travel_social_app/widgets/postsitem.dart';
import 'package:travel_social_app/widgets/saveitem.dart';
import 'package:travel_social_app/widgets/storyitem.dart';

class NewsFeed extends StatefulWidget {
  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: ListView(
                padding: EdgeInsets.only(left: 20, right: 10),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: AlwaysScrollableScrollPhysics(),
                children: [
                  SizedBox(height: 10.0),
                  StoryItem(),
                  SavedItem(),
                  PostItem(),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Newsfeed',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'Ubuntu-Regular',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
