// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: return_of_invalid_type, constant_identifier_names, prefer_const_constructors_in_immutables, unnecessary_this, sort_unnamed_constructors_first, join_return_with_assignment, missing_return, lines_longer_than_80_chars

part of 'chart_state.dart';

// **************************************************************************
// SuperEnumGenerator
// **************************************************************************

@immutable
abstract class ChartState extends Equatable {
  const ChartState(this._type);

  factory ChartState.initial() = Initial.create;

  factory ChartState.loading() = Loading.create;

  factory ChartState.successlist({@required dynamic response}) =
      Successlist.create;

  factory ChartState.successdetails(
      {@required dynamic response,
      @required dynamic respons2}) = Successdetails.create;

  factory ChartState.error() = Error.create;

  final _ChartState _type;

  /// The [when] method is the equivalent to pattern matching.
  /// Its prototype depends on the _ChartState [_type]s defined.
  R when<R extends Object>(
      {@required R Function() initial,
      @required R Function() loading,
      @required R Function(Successlist) successlist,
      @required R Function(Successdetails) successdetails,
      @required R Function() error}) {
    assert(() {
      if (initial == null ||
          loading == null ||
          successlist == null ||
          successdetails == null ||
          error == null) {
        throw 'check for all possible cases';
      }
      return true;
    }());
    switch (this._type) {
      case _ChartState.Initial:
        return initial();
      case _ChartState.Loading:
        return loading();
      case _ChartState.Successlist:
        return successlist(this as Successlist);
      case _ChartState.Successdetails:
        return successdetails(this as Successdetails);
      case _ChartState.Error:
        return error();
    }
  }

  /// The [whenOrElse] method is equivalent to [when], but doesn't require
  /// all callbacks to be specified.
  ///
  /// On the other hand, it adds an extra orElse required parameter,
  /// for fallback behavior.
  R whenOrElse<R extends Object>(
      {R Function() initial,
      R Function() loading,
      R Function(Successlist) successlist,
      R Function(Successdetails) successdetails,
      R Function() error,
      @required R Function(ChartState) orElse}) {
    assert(() {
      if (orElse == null) {
        throw 'Missing orElse case';
      }
      return true;
    }());
    switch (this._type) {
      case _ChartState.Initial:
        if (initial == null) break;
        return initial();
      case _ChartState.Loading:
        if (loading == null) break;
        return loading();
      case _ChartState.Successlist:
        if (successlist == null) break;
        return successlist(this as Successlist);
      case _ChartState.Successdetails:
        if (successdetails == null) break;
        return successdetails(this as Successdetails);
      case _ChartState.Error:
        if (error == null) break;
        return error();
    }
    return orElse(this);
  }

  /// The [whenPartial] method is equivalent to [whenOrElse],
  /// but non-exhaustive.
  void whenPartial(
      {void Function() initial,
      void Function() loading,
      void Function(Successlist) successlist,
      void Function(Successdetails) successdetails,
      void Function() error}) {
    assert(() {
      if (initial == null &&
          loading == null &&
          successlist == null &&
          successdetails == null &&
          error == null) {
        throw 'provide at least one branch';
      }
      return true;
    }());
    switch (this._type) {
      case _ChartState.Initial:
        if (initial == null) break;
        return initial();
      case _ChartState.Loading:
        if (loading == null) break;
        return loading();
      case _ChartState.Successlist:
        if (successlist == null) break;
        return successlist(this as Successlist);
      case _ChartState.Successdetails:
        if (successdetails == null) break;
        return successdetails(this as Successdetails);
      case _ChartState.Error:
        if (error == null) break;
        return error();
    }
  }

  @override
  List<Object> get props => const [];
}

@immutable
abstract class Initial extends ChartState {
  const Initial() : super(_ChartState.Initial);

  factory Initial.create() = _InitialImpl;
}

@immutable
class _InitialImpl extends Initial {
  const _InitialImpl() : super();

  @override
  String toString() => 'Initial()';
}

@immutable
abstract class Loading extends ChartState {
  const Loading() : super(_ChartState.Loading);

  factory Loading.create() = _LoadingImpl;
}

@immutable
class _LoadingImpl extends Loading {
  const _LoadingImpl() : super();

  @override
  String toString() => 'Loading()';
}

@immutable
abstract class Successlist extends ChartState {
  const Successlist({@required this.response}) : super(_ChartState.Successlist);

  factory Successlist.create({@required dynamic response}) = _SuccesslistImpl;

  final dynamic response;

  /// Creates a copy of this Successlist but with the given fields
  /// replaced with the new values.
  Successlist copyWith({dynamic response});
}

@immutable
class _SuccesslistImpl extends Successlist {
  const _SuccesslistImpl({@required this.response}) : super(response: response);

  @override
  final dynamic response;

  @override
  _SuccesslistImpl copyWith({Object response = superEnum}) => _SuccesslistImpl(
        response: response == superEnum ? this.response : response as dynamic,
      );
  @override
  String toString() => 'Successlist(response: ${this.response})';
  @override
  List<Object> get props => [response];
}

@immutable
abstract class Successdetails extends ChartState {
  const Successdetails({@required this.response, @required this.respons2})
      : super(_ChartState.Successdetails);

  factory Successdetails.create(
      {@required dynamic response,
      @required dynamic respons2}) = _SuccessdetailsImpl;

  final dynamic response;

  final dynamic respons2;

  /// Creates a copy of this Successdetails but with the given fields
  /// replaced with the new values.
  Successdetails copyWith({dynamic response, dynamic respons2});
}

@immutable
class _SuccessdetailsImpl extends Successdetails {
  const _SuccessdetailsImpl({@required this.response, @required this.respons2})
      : super(response: response, respons2: respons2);

  @override
  final dynamic response;

  @override
  final dynamic respons2;

  @override
  _SuccessdetailsImpl copyWith(
          {Object response = superEnum, Object respons2 = superEnum}) =>
      _SuccessdetailsImpl(
        response: response == superEnum ? this.response : response as dynamic,
        respons2: respons2 == superEnum ? this.respons2 : respons2 as dynamic,
      );
  @override
  String toString() =>
      'Successdetails(response: ${this.response}, respons2: ${this.respons2})';
  @override
  List<Object> get props => [response, respons2];
}

@immutable
abstract class Error extends ChartState {
  const Error() : super(_ChartState.Error);

  factory Error.create() = _ErrorImpl;
}

@immutable
class _ErrorImpl extends Error {
  const _ErrorImpl() : super();

  @override
  String toString() => 'Error()';
}
