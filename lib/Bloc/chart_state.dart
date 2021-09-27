


import 'package:musixc/model/charts_model.dart';
import 'package:musixc/model/track_model.dart';
import 'package:super_enum/super_enum.dart';

part 'chart_state.super.dart';

@superEnum
enum _ChartState{
  @object
Initial,
@object
Loading,
@Data(fields: [DataField<dynamic>('response')])
Successlist,
@Data(fields: [DataField<dynamic>('response'),DataField<dynamic>('respons2')])
Successdetails,
@object
Error,
}