import 'dart:convert';

import 'package:api_practice/models/news_channel_headline_model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class NewsRepository {

  Future<NewsChannelHeadlinesModel> fetchNewsChannelHeadlineAPI() async {
    String url = "https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=2d3a837a54e244eba61d30b41e279665";

    final response = await http.get(Uri.parse(url));
    if (kDebugMode) {
      print(response.body);
    }

    if(response.statusCode == 200){
      final body = jsonDecode(response.body);
      return NewsChannelHeadlinesModel.fromJson(body);
    }
    throw Exception('Error');
  }

}