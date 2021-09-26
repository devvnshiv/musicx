import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:musixc/model.dart';
import 'package:musixc/track_model.dart';

class api{
  
  // flutter pub run build_runner watch --delete-conflicting-outputs
  Future<Chart_list_model>  getdata()async{

    var res = await Dio().get("https://api.musixmatch.com/ws/1.1/chart.tracks.get?apikey=2d782bc7a52a41ba2fc1ef05b9cf40d7");
  print(res.data);
  var a = json.decode(res.data);
  return Chart_list_model.fromJson(a);

  }

  Future<TrackId_model>  gettrackdetails()async{

    var res = await Dio().get("https://api.musixmatch.com/ws/1.1/track.get?track_id=223550307&apikey=2d782bc7a52a41ba2fc1ef05b9cf40d7");
    print(res.data);
    var a = json.decode(res.data);
    return TrackId_model.fromJson(a);

  }


}