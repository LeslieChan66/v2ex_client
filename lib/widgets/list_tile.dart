import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:v2ex_client/models/topic_bean_entity.dart';



class TopicListTile extends StatefulWidget {
  final TopicBeanEntity entity;

  const TopicListTile({Key key, this.entity}) : super(key: key);
  
  @override
  _TopicListTileState createState() => _TopicListTileState();
}

class _TopicListTileState extends State<TopicListTile> {


  @override
  Widget build(BuildContext context) {
     return InkWell(
      child: Container(
        decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[200]))),
        margin: EdgeInsets.only(bottom: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // space
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // leading margin
                    SizedBox(
                      width: 15,
                    ),
                    // User Avatar
                    ClipOval(
                      child: CachedNetworkImage(
                        imageUrl: widget.entity.member.avatarNormal,
                        placeholder: (context, url) {
                          return Image.asset('assets/images/avatar_placeholder.png', width: 40,);
                        },
                        fit: BoxFit.cover,
                        width: 40,
                      ),
                    ),
                    // Space
                    SizedBox(
                      width: 15,
                    ),
                    //  Username And LastModified
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          widget.entity.member.username,
                          style: TextStyle(fontSize: 16.0),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              DateTime.fromMillisecondsSinceEpoch(
                                      widget.entity.lastModified * 1000)
                                  .toString()
                                  .split(' ')[0],
                              style:
                                  TextStyle(fontSize: 13.0, color: Colors.grey),
                            ),
                            Text(
                              '评论${widget.entity.replies}',
                              style:
                                  TextStyle(fontSize: 12.0, color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  child: Text(widget.entity.node.title),
                  margin: EdgeInsets.only(right: 15),
                )
              ],
            ),
            SizedBox(height: 5,),
            // Topic Title
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(widget.entity.title, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),),
            ),
            SizedBox(height: 5,),
            // content
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(widget.entity.content, style: TextStyle(fontSize: 16, color: Colors.grey[600]), maxLines: 3, overflow: TextOverflow.ellipsis,),
            ),
            SizedBox(height: 15,),
          ],
        ),
      ),
      onTap: () {

      },
    );
  }
}