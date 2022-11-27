import 'package:flutter/material.dart';
import 'package:news/api/api_management.dart';
import 'package:news/api/model/NewsResponse.dart';
import 'package:news/api/model/SourcesResponse.dart';
import 'news_widget.dart';

class NewsList extends StatefulWidget {
  Source sources;

  NewsList(this.sources);

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  String? value;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FutureBuilder<NewsResponse>(
            future: ApiManagement.getNews(widget.sources.id ?? ""),
            builder: (BuildContext, snapShot) {
              if (snapShot.hasError) {
                return Expanded(
                  child: Center(
                    child: Text("${snapShot.error.toString()}"),
                  ),
                );
              } else if (snapShot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              var data = snapShot.data!;
              if (data.status == 'error') {
                return Text("${data.message}");
              }
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
                child: Expanded(
                  child: ListView.builder(itemBuilder: (_, index){
                    return NewsWidget(data.newsList![index]);
                  },itemCount: data.newsList!.length,)
                ),
              );
            }));
  }
}
