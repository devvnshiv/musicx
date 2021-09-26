import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musixc/Bloc/bloc.dart';
import 'package:musixc/Bloc/chart_event.dart';
import 'package:musixc/model/charts_model.dart';
class ListBodys extends StatefulWidget {
  final Chart_list_model list;

  const ListBodys({ this.list}) ;

  @override
  _ListBodysState createState() => _ListBodysState();
}

class _ListBodysState extends State<ListBodys> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.list.message.body.trackList.length,
        itemBuilder: (context,index){
      return GestureDetector(
        onTap: (){
          print("yes");
BlocProvider.of<ChartBloc>(context).add(
  ChartEvent.trackdetailsevent(params:{"id": widget.list.message.body.trackList[index].track.trackId.toString()})
  );
        },
        child: Card(
          child: ListTile(
            leading:  Icon(Icons.library_music),
            title: Text(widget.list.message.body.trackList[index].track.trackName),
            subtitle: Text(widget.list.message.body.trackList[index].track.albumName),
            trailing:Text(widget.list.message.body.trackList[index].track.artistName) ,
          ),
        ),
      );
    });

  }
}
