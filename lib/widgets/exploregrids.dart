import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:travel_social_app/utils/data.dart';

class ExploreGrids extends StatefulWidget {
  @override
  _ExploreGridsState createState() => _ExploreGridsState();
}

class _ExploreGridsState extends State<ExploreGrids> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          Map datar = data[index];
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: AssetImage(datar['story']),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(
                          Feather.map_pin,
                          size: 15,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text(
                          datar['location'],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Ubuntu-Regular'),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Feather.heart,
                        size: 15,
                        color: Colors.white,
                      ),
                      Spacer(),
                      Icon(
                        Icons.share,
                        size: 15,
                        color: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
        staggeredTileBuilder: (int index) =>
            StaggeredTile.count(2, index.isEven ? 3 : 2),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }
}
