import 'package:flutter/material.dart';
import 'package:skeleton_loader/skeleton_loader.dart';

class ListTileSkeleton extends StatefulWidget {
  @override
  _ListTileSkeletonState createState() => _ListTileSkeletonState();
}

class _ListTileSkeletonState extends State<ListTileSkeleton> {
  @override
  Widget build(BuildContext context) {
    return SkeletonLoader(
      builder: Container(
        decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: Colors.black87))),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 20,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        height: 12,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5))
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        height: 12,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5))
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5))
              ),
            ),
            SizedBox(height: 10),
          ]
        ),

      ),
      items: 10,
      period: Duration(seconds: 1),
      direction: SkeletonDirection.ltr,
    );
  }
}
