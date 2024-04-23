import 'dart:convert';

import 'package:http/http.dart' as http;

final String apikey = 'ebc74b6864c94acdafe25f6262686452';

Future<List<NewsModel>> showNews() async {
  Uri uri = Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=in&apiKey=$apikey');

  final response = await http.get(uri);

  if (response.statusCode == 200 || response.statusCode == 201) {
    print(response.body);
    Map<String, dynamic> result = json.decode(response.body);

    List articles = result['articles'];
    print('Articles are - $articles');
    List<NewsModel> news = articles.map((e) => NewsModel.fromjson(e)).toList();

    return news;
  } else {
    print('Error - ${response.statusCode}');
    return [];
  }
}

class NewsModel {
  String title, description, content, imageUrl, date;

  NewsModel(
      this.title, this.description, this.content, this.imageUrl, this.date);

  factory NewsModel.fromjson(Map<String, dynamic> jsondata) {
    return NewsModel(
        jsondata['title'] ?? '',
        jsondata['description'] ?? '',
        jsondata['content'] ?? '',
        jsondata['urlToImage'] ?? 'NoImage',
        jsondata['publishedAt'] ?? '');
  }
}
