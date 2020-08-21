import 'package:v2ex_client/generated/json/base/json_convert_content.dart';
import 'package:v2ex_client/generated/json/base/json_filed.dart';

class TopicBeanEntity with JsonConvert<TopicBeanEntity> {
	TopicBeanNode node;
	TopicBeanMember member;
	@JSONField(name: "last_reply_by")
	String lastReplyBy;
	@JSONField(name: "last_touched")
	int lastTouched;
	String title;
	String url;
	int created;
	String content;
	@JSONField(name: "content_rendered")
	String contentRendered;
	@JSONField(name: "last_modified")
	int lastModified;
	int replies;
	int id;
}

class TopicBeanNode with JsonConvert<TopicBeanNode> {
	@JSONField(name: "avatar_large")
	String avatarLarge;
	String name;
	@JSONField(name: "avatar_normal")
	String avatarNormal;
	String title;
	String url;
	int topics;
	String footer;
	String header;
	@JSONField(name: "title_alternative")
	String titleAlternative;
	@JSONField(name: "avatar_mini")
	String avatarMini;
	int stars;
	List<dynamic> aliases;
	bool root;
	int id;
	@JSONField(name: "parent_node_name")
	String parentNodeName;
}

class TopicBeanMember with JsonConvert<TopicBeanMember> {
	String username;
	String website;
	String github;
	String psn;
	@JSONField(name: "avatar_normal")
	String avatarNormal;
	String bio;
	String url;
	String tagline;
	String twitter;
	int created;
	@JSONField(name: "avatar_large")
	String avatarLarge;
	@JSONField(name: "avatar_mini")
	String avatarMini;
	String location;
	String btc;
	int id;
}
