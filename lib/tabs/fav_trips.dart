import 'package:flutter/material.dart';

class FavoriteTrips extends StatefulWidget {
  @override
  _FavoriteTripsState createState() => _FavoriteTripsState();
}

class _FavoriteTripsState extends State<FavoriteTrips> {
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
