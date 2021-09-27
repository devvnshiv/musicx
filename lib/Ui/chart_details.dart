import 'package:flutter/material.dart';
import 'package:musixc/model/lyrics_model.dart';
import 'package:musixc/model/track_model.dart';

class details extends StatefulWidget {
 final TrackId_model track;
 final Lyrics ly;

  const details( {this.ly,this.track}) ;

  @override
  _detailsState createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
      appBar: AppBar(),
        body:
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
                Container(margin: EdgeInsets.only(top: 8.0,
                    bottom: 8.0)),

              ],
          ),
            ),


    );
  }
}
