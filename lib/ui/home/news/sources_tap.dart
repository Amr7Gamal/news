import 'package:flutter/material.dart';
import 'package:news/api/model/SourcesResponse.dart';
import 'package:news/base/myTheme.dart';

class SourcesTap extends StatelessWidget {
  Source source;
  bool selected;

  SourcesTap(this.source, this.selected);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 4),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: selected == true
                ? Theme.of(context).primaryColor
                : Colors.transparent,
            border: Border.all(color: Theme.of(context).primaryColor, width: 2)),
        child: Text(source.name ?? "",
            style: Theme.of(context).textTheme.headline4!.copyWith(
                color: selected == true
                    ? MyTheme.whiteColor
                    : Theme.of(context).primaryColor)),
      ),
    );
  }
}
