import 'package:api_practice/models/news_channel_headline_model.dart';
import 'package:api_practice/repository/news_repository.dart';

class NewsViewModel {
  final _rep = NewsRepository();

  Future<NewsChannelHeadlinesModel> fetchNewsChannelHeadlineAPI() async{

    final response = await _rep.fetchNewsChannelHeadlineAPI();
    return response;

  }
}