import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news/api/model/SourcesResponse.dart';

import 'model/NewsResponse.dart';

class ApiManagement {
 static  String API_URL = 'newsapi.org',
      API_KAY = 'f07264ef53a943b88854fd7895bd89df';


 static Future<SourcesResponse> getSources() async {
    var uri = Uri.https(API_URL, '/v2/top-headlines/sources',
        {'apiKey': API_KAY, 'category': 'sports'});
    var response = await http.get(uri);
    var json = jsonDecode(response.body);
    return SourcesResponse.fromJson(json) ;
  }


 static Future<NewsResponse> getNews(String id) async {
   var uri = Uri.https(API_URL, '/v2/everything',
       {'apiKey': API_KAY, 'sources': id});
   var response = await http.get(uri);
   var json = jsonDecode(response.body);
  return NewsResponse.fromJson(json);
 }
}
