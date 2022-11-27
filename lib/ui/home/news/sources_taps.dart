import 'package:flutter/material.dart';
import 'package:news/ui/home/news/sources_tap.dart';
import '../../../api/model/SourcesResponse.dart';
import 'news_list.dart';

class SourcesTaps extends StatefulWidget {
  List<Source> sources;
  SourcesTaps(this.sources);

  @override
  State<SourcesTaps> createState() => _SourcesTapsState();
}

class _SourcesTapsState extends State<SourcesTaps> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
          length: widget.sources.length,
          child: Column(children: [
            TabBar(
              onTap: (index){
                selectedIndex = index;
                setState(() {});
              },
              isScrollable: true,
              indicatorColor: Colors.transparent,
              tabs: widget.sources.map((sources) {
                var isSelected = widget.sources.indexOf(sources) == selectedIndex;
                return SourcesTap(sources, isSelected);
              }).toList(),
            ),

         NewsList(widget.sources[selectedIndex])
        ])),
    );
  }
}
