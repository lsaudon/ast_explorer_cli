import 'package:analyzer/dart/element/type.dart';
import 'package:ast_explorer_cli/src/extensions/map_extensions.dart';

class DartDartType {
  const DartDartType(this.entity);

  final DartType? entity;

  bool? get isBottom => entity?.isBottom;
  bool? get isDartAsyncFuture => entity?.isDartAsyncFuture;
  bool? get isDartAsyncFutureOr => entity?.isDartAsyncFutureOr;
  bool? get isDartAsyncStream => entity?.isDartAsyncStream;
  bool? get isDartCoreBool => entity?.isDartCoreBool;
  bool? get isDartCoreDouble => entity?.isDartCoreDouble;
  bool? get isDartCoreEnum => entity?.isDartCoreEnum;
  bool? get isDartCoreFunction => entity?.isDartCoreFunction;
  bool? get isDartCoreInt => entity?.isDartCoreInt;
  bool? get isDartCoreIterable => entity?.isDartCoreIterable;
  bool? get isDartCoreList => entity?.isDartCoreList;
  bool? get isDartCoreMap => entity?.isDartCoreMap;
  bool? get isDartCoreNull => entity?.isDartCoreNull;
  bool? get isDartCoreNum => entity?.isDartCoreNum;
  bool? get isDartCoreObject => entity?.isDartCoreObject;
  bool? get isDartCoreRecord => entity?.isDartCoreRecord;
  bool? get isDartCoreSet => entity?.isDartCoreSet;
  bool? get isDartCoreString => entity?.isDartCoreString;
  bool? get isDartCoreSymbol => entity?.isDartCoreSymbol;
  bool? get isDynamic => entity?.isDynamic;
  bool? get isVoid => entity?.isVoid;
  // NullabilitySuffix get nullabilitySuffix;
  String? get displayString => entity?.getDisplayString(withNullability: true);

  Map<String, Object?> toMap() => {}..addEntries(
      [
        MapEntry('isBottom', isBottom),
        MapEntry('isDartAsyncFuture', isDartAsyncFuture),
        MapEntry('isDartAsyncFutureOr', isDartAsyncFutureOr),
        MapEntry('isDartAsyncStream', isDartAsyncStream),
        MapEntry('isDartCoreBool', isDartCoreBool),
        MapEntry('isDartCoreDouble', isDartCoreDouble),
        MapEntry('isDartCoreEnum', isDartCoreEnum),
        MapEntry('isDartCoreFunction', isDartCoreFunction),
        MapEntry('isDartCoreInt', isDartCoreInt),
        MapEntry('isDartCoreIterable', isDartCoreIterable),
        MapEntry('isDartCoreList', isDartCoreList),
        MapEntry('isDartCoreMap', isDartCoreMap),
        MapEntry('isDartCoreNull', isDartCoreNull),
        MapEntry('isDartCoreNum', isDartCoreNum),
        MapEntry('isDartCoreObject', isDartCoreObject),
        MapEntry('isDartCoreRecord', isDartCoreRecord),
        MapEntry('isDartCoreSet', isDartCoreSet),
        MapEntry('isDartCoreString', isDartCoreString),
        MapEntry('isDartCoreSymbol', isDartCoreSymbol),
        MapEntry('isDynamic', isDynamic),
        MapEntry('isVoid', isVoid),
        MapEntry('displayString', displayString),
      ].whereNotNullAndNotFalseAndNotEmptyList(),
    );
}
