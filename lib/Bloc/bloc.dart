



import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musixc/Bloc/chart_event.dart';
import 'package:musixc/Bloc/chart_state.dart';
import 'package:musixc/api/musixapi.dart';
import 'package:musixc/model/charts_model.dart';
import 'package:musixc/model/lyrics_model.dart';
import 'package:musixc/model/track_model.dart';

class ChartBloc extends Bloc<ChartEvent, ChartState>{

  ChartBloc():super(ChartState.initial());

  @override
  Stream<ChartState> mapEventToState(ChartEvent event)async*{
    yield*  event.when(chartlistevent: ()=> mapchartlist(),
        trackdetailsevent: (e)=>mapcharttrackdetails(e));
  }


  Stream<ChartState> mapchartlist()async*{
    print("step 1");

   print("step 1");
  Chart_list_model data =await  Api().getdata();
  if(data.message.body.trackList[0].track.artistName!=null){
    yield ChartState.successlist(response: data);
  } else {
    yield ChartState.error();
  }
  }

  Stream<ChartState> mapcharttrackdetails( Trackdetailsevent event) async*{
    print("step 1");
    print(event.params["id"]);
    yield ChartState.loading();
    TrackId_model track = await Api().gettrackdetails(event.params["id"].toString());
    Lyrics ly =await Api().getlyrics(event.params["id"]);
    print(ly.scriptTrackingUrl);
    if(track.message.body.track.trackRating!=null){
      yield ChartState.successdetails(response: track,respons2: ly);
    } else {yield ChartState.error();}
  }

}