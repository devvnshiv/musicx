// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: return_of_invalid_type, constant_identifier_names, prefer_const_constructors_in_immutables, unnecessary_this, sort_unnamed_constructors_first, join_return_with_assignment, missing_return, lines_longer_than_80_chars

part of 'chart_event.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class ChartEvent extends Equatable {
  const ChartEvent(this._type);

  factory ChartEvent.chartlistevent() = Chartlistevent.create;

  factory ChartEvent.trackdetailsevent({@required dynamic params}) =
      Trackdetailsevent.create;

  final _ChartEvent _type;

  /// The [when] method is the equivalent to pattern matching.
  /// Its prototype depends on the _ChartEvent [_type]s defined.
  R when<R extends Object>(
      {@required R Function() chartlistevent,
      @required R Function(Trackdetailsevent) trackdetailsevent}) {
    assert(() {
      if (chartlistevent == null || trackdetailsevent == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _ChartEvent.Chartlistevent:
        return chartlistevent();
      case _ChartEvent.Trackdetailsevent:
        return trackdetailsevent(this as Trackdetailsevent);
    }
  }

  /// The [whenOrElse] method is equivalent to [when], but doesn't require
  /// all callbacks to be specified.
  ///
  /// On the other hand, it adds an extra orElse required parameter,
  /// for fallback behavior.
  R whenOrElse<R extends Object>(
      {R Function() chartlistevent,
      R Function(Trackdetailsevent) trackdetailsevent,
      @required R Function(ChartEvent) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _ChartEvent.Chartlistevent:
        if (chartlistevent == null) break;
        return chartlistevent();
      case _ChartEvent.Trackdetailsevent:
        if (trackdetailsevent == null) break;
        return trackdetailsevent(this as Trackdetailsevent);
    }
    return orElse(this);
  }

  /// The [whenPartial] method is equivalent to [whenOrElse],
  /// but non-exhaustive.
  void whenPartial(
      {void Function() chartlistevent,
      void Function(Trackdetailsevent) trackdetailsevent}) {
    assert(() {
      if (chartlistevent == null && trackdetailsevent == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _ChartEvent.Chartlistevent:
        if (chartlistevent == null) break;
        return chartlistevent();
      case _ChartEvent.Trackdetailsevent:
        if (trackdetailsevent == null) break;
        return trackdetailsevent(this as Trackdetailsevent);
    }
  }

  @override
  List<Object> get props => const [];
}

@immutable
abstract class Chartlistevent extends ChartEvent {
  const Chartlistevent() : super(_ChartEvent.Chartlistevent);

  factory Chartlistevent.create() = _ChartlisteventImpl;
}

@immutable
class _ChartlisteventImpl extends Chartlistevent {
  const _ChartlisteventImpl() : super();

  @override
  String toString() => 'Chartlistevent()';
}

@immutable
abstract class Trackdetailsevent extends ChartEvent {
  const Trackdetailsevent({@required this.params})
      : super(_ChartEvent.Trackdetailsevent);

  factory Trackdetailsevent.create({@required dynamic params}) =
      _TrackdetailseventImpl;

  final dynamic params;

  /// Creates a copy of this Trackdetailsevent but with the given fields
  /// replaced with the new values.
  Trackdetailsevent copyWith({dynamic params});
}

@immutable
class _TrackdetailseventImpl extends Trackdetailsevent {
  const _TrackdetailseventImpl({@required this.params}) : super(params: params);

  @override
  final dynamic params;

  @override
  _TrackdetailseventImpl copyWith({Object params = superEnum}) =>
      _TrackdetailseventImpl(
        params: params == superEnum ? this.params : params as dynamic,
      );
  @override
  String toString() => 'Trackdetailsevent(params: ${this.params})';
  @override
  List<Object> get props => [params];
}
