import 'package:flutter/material.dart';

class Whishlist extends StatefulWidget {
  @override
  _WhishlistState createState() => _WhishlistState();
}

class _WhishlistState extends State<Whishlist> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        icon: Icon(Icons.sentiment_very_satisfied),
        iconSize: 100,
        onPressed: () {},
      ),
    );
  }
}