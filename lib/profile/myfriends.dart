import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:travel_social_app/utils/data.dart';

class MyFriends extends StatefulWidget {
  @override
  _MyFriendsState createState() => _MyFriendsState();
}

class _MyFriendsState extends State<MyFriends> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        Map datar = data[index];
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(datar['dp']),
            ),
            title: Text(
              datar['name'],
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Ubuntu-Regular',
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'online',
              style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 10,
                  fontFamily: 'Ubuntu-Regular',
                  fontWeight: FontWeight.bold),
            ),
            trailing: Icon(
              Feather.user_check,
              color: Colors.black,
              size: 20,
            ),
          ),
        );
      },
    );
  }
}
