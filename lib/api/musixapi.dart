

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:musixc/model/charts_model.dart';
import 'package:musixc/model/lyrics_model.dart';
import 'package:musixc/model/track_model.dart';

class Api {
  String key = "e987397c9d6f1c1d034b3bf6712c38d5";
  String baseurl = "https://api.musixmatch.com/ws/1.1/";
  String charturl = "chart.tracks.get?";
  String trackurl = "track.get?";
  String lyricsurl = "track.lyrics.get?";


  Future<Chart_list_model> getdata() async {
    var res = await Dio().get(baseurl + charturl,
      queryParameters: {"apikey": key},
    );
    print(res.data);
    if (res.statusCode == 200) {
      var jsondecode = json.decode(res.data);
      return Chart_list_model.fromJson(jsondecode);
    } else
      throw Exception('Failed to load ${res.statusCode}');
  }


  Future<TrackId_model> gettrackdetails(String id) async {
    var res = await Dio().get(baseurl+trackurl,
      queryParameters: {"apikey": key,
        "track_id":id

      },
    );
    print(res.data);
    if (res.statusCode == 200) {
      var jsondecode = json.decode(res.data);
      return TrackId_model.fromJson(jsondecode);

    }else{
      throw Exception('Failed to load ${res.statusCode}');
    }
  }



  Future<Lyrics> getlyrics(String id) async {
    var res = await Dio().get(baseurl+lyricsurl,
      queryParameters: {"apikey": key,
        "track_id":id

      },
    );
    print(res.data);
    if (res.statusCode == 200) {
      var jsondecode = json.decode(res.data);
      return Lyrics.fromJson(jsondecode);

    }else{
      throw Exception('Failed to load ${res.statusCode}');
    }
  }
}