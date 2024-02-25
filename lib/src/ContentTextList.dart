import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';

class ContentTextList {
  final List<ContentText> contentList;

  ContentTextList({required this.contentList});

  factory ContentTextList.fromJson(Map<String, dynamic> json) {
    List<dynamic> contentJsonList = json['data'];
    List<ContentText> list =
        contentJsonList.map((json) => ContentText.fromJson(json)).toList();
    return ContentTextList(contentList: list);
  }
}
