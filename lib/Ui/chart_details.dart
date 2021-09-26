import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:musixc/model/lyrics_model.dart';
import 'package:musixc/model/track_model.dart';

import '../Bloc/bloc.dart';
import '../Bloc/chart_event.dart';

class details extends StatefulWidget {
 final TrackId_model track;
 final lyrics ly;

  const details( {this.ly,this.track}) ;

  @override
  _detailsState createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: (){
                BlocProvider.of<ChartBloc>(context).add(
                    ChartEvent.chartlistevent()
                );
              },
              icon: Icon(Icons.arrow_back,color: Colors.black,),
            ),

          ),
          body: OfflineBuilder(
            connectivityBuilder: (
                BuildContext context,
                ConnectivityResult connectivity,
                Widget child,
                ) {
              final bool connected = connectivity != ConnectivityResult.none;
              return connected?bodydata():Center(child: Text("Offline"));},
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
        ),

      );
  }
bodydata(){
  return ListView(
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Name', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
          Text('${widget.track.message.body.track.trackName}', style: TextStyle(fontSize: 20)),
          SizedBox(height: 20),
          Text('Artist', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
          Text('${widget.track.message.body.track.artistName}',style: TextStyle(fontSize: 20)),
          SizedBox(height: 20),
          Text('Album Name', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
          Text('${widget.track.message.body.track.albumName}',style: TextStyle(fontSize: 20)),
          SizedBox(height: 20),
          Text('Explicit', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
          Text('${widget.track.message.body.track.explicit}',style: TextStyle(fontSize: 20)),
          SizedBox(height: 20),
          Text('Rating', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
          Text('${widget.track.message.body.track.trackRating}',style: TextStyle(fontSize: 20)),
          SizedBox(height: 20),
          Text('Lyrics', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
          Text('${widget.ly.message.body.lyrics.lyricsBody}',style: TextStyle(fontSize: 12)),
          Container(margin: EdgeInsets.only(top: 8.0,
              bottom: 8.0)),

        ],
      ),
    ],
  );
}


}
