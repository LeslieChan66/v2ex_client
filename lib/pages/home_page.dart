import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:v2ex_client/api/http_utils.dart';
import 'package:v2ex_client/generated/json/topic_bean_entity_helper.dart';
import 'package:v2ex_client/models/topic_bean_entity.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('V2EX'),
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return FutureBuilder(
      future: HttpUtils.getNewTopics(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<TopicBeanEntity> topics = [];
          snapshot.data.forEach((item) {
            TopicBeanEntity entity = TopicBeanEntity();
            topics.add(topicBeanEntityFromJson(entity, item));
          });
          return ListView(
            children: topics.map<Widget>((e) => _buildTopicTile(e)).toList(),
          );
        } else {
          return Text('请求中...');
        }
      },
    );
  }

  _buildTopicTile(TopicBeanEntity entity) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CachedNetworkImage(
                  imageUrl: entity.member.avatarNormal,
                  width: 40,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(entity.member.username),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(DateTime.fromMillisecondsSinceEpoch(entity.lastModified * 1000).toString()),
                        Text('评论${entity.replies}')
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
