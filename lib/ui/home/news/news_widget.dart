import 'package:flutter/material.dart';
import 'package:news/api/model/NewsResponse.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:news/base/MyDate.dart';

class NewsWidget extends StatelessWidget {
  News news;

  NewsWidget(this.news);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: news.urlToImage!,
            placeholder: (context, url) =>
                Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(Icons.error),
            height: 310.5,
            width: 360.58,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Text(
              news.author!,
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              news.title!,
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              MyDate.formatDate(news.publishedAt ?? ""),
              style: Theme.of(context).textTheme.headline4,
              textAlign: TextAlign.end,
            ),
          ]),
        )
      ],
    );
  }
}
