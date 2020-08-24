import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:v2ex_client/api/http_utils.dart';
import 'package:v2ex_client/generated/json/topic_bean_entity_helper.dart';
import 'package:v2ex_client/models/topic_bean_entity.dart';
import 'package:v2ex_client/widgets/drawer.dart';
import 'package:v2ex_client/widgets/list_tile.dart';
import 'package:v2ex_client/widgets/list_tile_skeleton.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 主题帖列表
  List<TopicBeanEntity> topics = [];
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  @override
  void initState() {
    super.initState();
    initData();
  }

  // 加载数据
  initData() async {
    var res = await HttpUtils.getHotTopics();
    print(res);
    if (res == null) {
      return;
    }
    List<TopicBeanEntity> temp = [];
    res.forEach((item) {
      TopicBeanEntity entity = TopicBeanEntity();
      temp.add(topicBeanEntityFromJson(entity, item));
    });
    setState(() {
      topics = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'V2EX',
          style: GoogleFonts.pressStart2p(),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: _buildBody(),
      drawer: VDrawer(),
    );
  }

  _buildBody() {
    if (topics.length == 0) {
      // skeleton
      return ListView.builder(
          itemCount: 1, itemBuilder: (context, index) => ListTileSkeleton());
    } else {
      return SmartRefresher(
        controller: _refreshController,
        onRefresh: _onRefresh,
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: topics
              .map<Widget>((e) => TopicListTile(
                    entity: e,
                  ))
              .toList(),
        ),
      );
    }
  }

  // 下拉刷新
  void _onRefresh() async {
    await Future.delayed(Duration(seconds: 3));
    _refreshController.refreshCompleted();
  }

  // 加载更多
  void _onLoading() async {
    await Future.delayed(Duration(seconds: 3));
    _refreshController.loadComplete();
  }
}
