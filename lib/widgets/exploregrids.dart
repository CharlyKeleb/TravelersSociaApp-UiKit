import 'dart:math';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';
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
      child: GridView.custom(
        gridDelegate: SliverWovenGridDelegate.count(
          pattern: const [
            WovenGridTile(1),
            WovenGridTile(
              5 / 7,
              crossAxisRatio: 0.9,
              alignment: AlignmentDirectional.centerEnd,
            ),
          ],
          crossAxisCount: 2,
          mainAxisSpacing: 2.0,
          crossAxisSpacing: 2.0,
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
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
                            Iconsax.location,
                            size: 15,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5),
                          Text(
                            datar['location'],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Ubuntu-Regular',
                            ),
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
                        Random().nextBool()
                            ? Icon(
                                Iconsax.heart,
                                size: 15,
                                color: Colors.white,
                              )
                            : Icon(
                                Ionicons.heart,
                                size: 15,
                                color: Colors.red,
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
          childCount: data.length,
          // staggeredTileBuilder: (int index) =>
          //     StaggeredTile.count(2, index.isEven ? 3 : 2),
        ),
      ),
    );
  }
}
