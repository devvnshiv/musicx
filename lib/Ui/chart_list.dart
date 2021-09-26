

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:musixc/Bloc/bloc.dart';
import 'package:musixc/Bloc/chart_event.dart';

import 'package:musixc/Bloc/chart_state.dart';
import 'package:musixc/Ui/listbody.dart';

import 'package:musixc/model/charts_model.dart';


class Chart_list_page extends StatefulWidget {
final Chart_list_model list ;

  const Chart_list_page({ this.list}) ;


  @override
  _Chart_list_pageState createState() => _Chart_list_pageState();
}

class _Chart_list_pageState extends State<Chart_list_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
backgroundColor: Colors.white,
        centerTitle:  true,
        title: Text("Trending",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
      ),
      body:OfflineBuilder(
      connectivityBuilder: (
      BuildContext context,
      ConnectivityResult connectivity,
      Widget child,
    ) {
      final bool connected = connectivity != ConnectivityResult.none;
      return connected?ListBodys(list: widget.list,):Center(child: Text("Offline"));},
        child:Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    new Text(
    'There are no bottons to push :)',
    ),
    new Text(
    'Just turn off your internet.',
    ),
    ],

        )
        )
    );
  }




}
