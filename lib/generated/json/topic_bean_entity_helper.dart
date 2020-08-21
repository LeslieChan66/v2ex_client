import 'package:v2ex_client/models/topic_bean_entity.dart';

topicBeanEntityFromJson(TopicBeanEntity data, Map<String, dynamic> json) {
	if (json['node'] != null) {
		data.node = new TopicBeanNode().fromJson(json['node']);
	}
	if (json['member'] != null) {
		data.member = new TopicBeanMember().fromJson(json['member']);
	}
	if (json['last_reply_by'] != null) {
		data.lastReplyBy = json['last_reply_by']?.toString();
	}
	if (json['last_touched'] != null) {
		data.lastTouched = json['last_touched']?.toInt();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['created'] != null) {
		data.created = json['created']?.toInt();
	}
	if (json['content'] != null) {
		data.content = json['content']?.toString();
	}
	if (json['content_rendered'] != null) {
		data.contentRendered = json['content_rendered']?.toString();
	}
	if (json['last_modified'] != null) {
		data.lastModified = json['last_modified']?.toInt();
	}
	if (json['replies'] != null) {
		data.replies = json['replies']?.toInt();
	}
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	return data;
}

Map<String, dynamic> topicBeanEntityToJson(TopicBeanEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.node != null) {
		data['node'] = entity.node.toJson();
	}
	if (entity.member != null) {
		data['member'] = entity.member.toJson();
	}
	data['last_reply_by'] = entity.lastReplyBy;
	data['last_touched'] = entity.lastTouched;
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['created'] = entity.created;
	data['content'] = entity.content;
	data['content_rendered'] = entity.contentRendered;
	data['last_modified'] = entity.lastModified;
	data['replies'] = entity.replies;
	data['id'] = entity.id;
	return data;
}

topicBeanNodeFromJson(TopicBeanNode data, Map<String, dynamic> json) {
	if (json['avatar_large'] != null) {
		data.avatarLarge = json['avatar_large']?.toString();
	}
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['avatar_normal'] != null) {
		data.avatarNormal = json['avatar_normal']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['topics'] != null) {
		data.topics = json['topics']?.toInt();
	}
	if (json['footer'] != null) {
		data.footer = json['footer']?.toString();
	}
	if (json['header'] != null) {
		data.header = json['header']?.toString();
	}
	if (json['title_alternative'] != null) {
		data.titleAlternative = json['title_alternative']?.toString();
	}
	if (json['avatar_mini'] != null) {
		data.avatarMini = json['avatar_mini']?.toString();
	}
	if (json['stars'] != null) {
		data.stars = json['stars']?.toInt();
	}
	if (json['aliases'] != null) {
		data.aliases = new List<dynamic>();
		data.aliases.addAll(json['aliases']);
	}
	if (json['root'] != null) {
		data.root = json['root'];
	}
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['parent_node_name'] != null) {
		data.parentNodeName = json['parent_node_name']?.toString();
	}
	return data;
}

Map<String, dynamic> topicBeanNodeToJson(TopicBeanNode entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['avatar_large'] = entity.avatarLarge;
	data['name'] = entity.name;
	data['avatar_normal'] = entity.avatarNormal;
	data['title'] = entity.title;
	data['url'] = entity.url;
	data['topics'] = entity.topics;
	data['footer'] = entity.footer;
	data['header'] = entity.header;
	data['title_alternative'] = entity.titleAlternative;
	data['avatar_mini'] = entity.avatarMini;
	data['stars'] = entity.stars;
	if (entity.aliases != null) {
		data['aliases'] =  [];
	}
	data['root'] = entity.root;
	data['id'] = entity.id;
	data['parent_node_name'] = entity.parentNodeName;
	return data;
}

topicBeanMemberFromJson(TopicBeanMember data, Map<String, dynamic> json) {
	if (json['username'] != null) {
		data.username = json['username']?.toString();
	}
	if (json['website'] != null) {
		data.website = json['website']?.toString();
	}
	if (json['github'] != null) {
		data.github = json['github']?.toString();
	}
	if (json['psn'] != null) {
		data.psn = json['psn']?.toString();
	}
	if (json['avatar_normal'] != null) {
		data.avatarNormal = json['avatar_normal']?.toString();
	}
	if (json['bio'] != null) {
		data.bio = json['bio']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['tagline'] != null) {
		data.tagline = json['tagline']?.toString();
	}
	if (json['twitter'] != null) {
		data.twitter = json['twitter']?.toString();
	}
	if (json['created'] != null) {
		data.created = json['created']?.toInt();
	}
	if (json['avatar_large'] != null) {
		data.avatarLarge = json['avatar_large']?.toString();
	}
	if (json['avatar_mini'] != null) {
		data.avatarMini = json['avatar_mini']?.toString();
	}
	if (json['location'] != null) {
		data.location = json['location']?.toString();
	}
	if (json['btc'] != null) {
		data.btc = json['btc']?.toString();
	}
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	return data;
}

Map<String, dynamic> topicBeanMemberToJson(TopicBeanMember entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['username'] = entity.username;
	data['website'] = entity.website;
	data['github'] = entity.github;
	data['psn'] = entity.psn;
	data['avatar_normal'] = entity.avatarNormal;
	data['bio'] = entity.bio;
	data['url'] = entity.url;
	data['tagline'] = entity.tagline;
	data['twitter'] = entity.twitter;
	data['created'] = entity.created;
	data['avatar_large'] = entity.avatarLarge;
	data['avatar_mini'] = entity.avatarMini;
	data['location'] = entity.location;
	data['btc'] = entity.btc;
	data['id'] = entity.id;
	return data;
}