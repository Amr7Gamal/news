import 'package:flutter/material.dart';
import 'package:news/ui/home/news/sources_taps.dart';
import '../../../api/api_management.dart';
import '../../../api/model/SourcesResponse.dart';
import '../../../base/base.dart';
import '../home_viewModel.dart';

class newsFragment extends StatefulWidget {

  @override
  State<newsFragment> createState() => _newsFragmentState();
}

class _newsFragmentState extends BaseState<newsFragment, HomeViewModel>
    implements HomeNavigator {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
        ),
        body: Column(
          children:[ Expanded(
            child: FutureBuilder<SourcesResponse>(
                future: ApiManagement.getSources(),
                builder: (BuildContext, snapShot) {
                  if (snapShot.hasError) {
                    return Expanded(
                      child: Center(
                        child: Text("${snapShot.error.toString()}"),
                      ),
                    );
                  } else if (snapShot.connectionState ==
                      ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  var data = snapShot.data!;
                  if(data.status == 'error'){
                    return Text("${data.message}");
                  }
                  var sources = data.sources;
                  return SourcesTaps(sources!);
                }),
          ),

          ]
        ));
  }

  @override
  HomeViewModel initViewModel() {
    return HomeViewModel();
  }

  // fu

}
