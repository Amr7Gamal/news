import 'SourcesResponse.dart';

class NewsResponse {
  String? code , message;

  NewsResponse({
      this.status, 
      this.totalResults, 
      this.newsList,this.code , this.message});

  NewsResponse.fromJson(dynamic json) {
    code = json['code'];
    message = json['message'];
    status = json['status'];
    totalResults = json['totalResults'];
    if (json['articles'] != null) {
      newsList = [];
      json['articles'].forEach((v) {
        newsList?.add(News.fromJson(v));
      });
    }
  }
  String? status;
  num? totalResults;
  List<News>? newsList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['totalResults'] = totalResults;
    if (newsList != null) {
      map['articles'] = newsList?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class News {
  News({
      this.source, 
      this.author, 
      this.title, 
      this.description, 
      this.url, 
      this.urlToImage, 
      this.publishedAt, 
      this.content,});

  News.fromJson(dynamic json) {
    source = json['source'] != null ? Source.fromJson(json['source']) : null;
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (source != null) {
      map['source'] = source?.toJson();
    }
    map['author'] = author;
    map['title'] = title;
    map['description'] = description;
    map['url'] = url;
    map['urlToImage'] = urlToImage;
    map['publishedAt'] = publishedAt;
    map['content'] = content;
    return map;
  }

}
