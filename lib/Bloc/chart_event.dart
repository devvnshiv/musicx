

import 'package:super_enum/super_enum.dart';
part 'chart_event.super.dart';

@superEnum
enum _ChartEvent{
  @object
Chartlistevent,
@Data(fields:[ DataField<dynamic>("params")])
Trackdetailsevent,
}