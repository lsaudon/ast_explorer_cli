import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_ast_node.dart';
import 'package:ast_explorer_cli/src/extensions/map_extensions.dart';

class DartTypeAnnotation extends DartAstNode {
  const DartTypeAnnotation(super.entity);

  TypeAnnotation get _entity => entity as TypeAnnotation;

  String? get question => _entity.question?.stringValue;
  DartType? get type => _entity.type;
  // InstantiatedTypeAliasElement? get alias;
  // Element? get element;
  bool? get isBottom => _entity.type?.isBottom;
  bool? get isDartAsyncFuture => _entity.type?.isDartAsyncFuture;
  bool? get isDartAsyncFutureOr => _entity.type?.isDartAsyncFutureOr;
  bool? get isDartAsyncStream => _entity.type?.isDartAsyncStream;
  bool? get isDartCoreBool => _entity.type?.isDartCoreBool;
  bool? get isDartCoreDouble => _entity.type?.isDartCoreDouble;
  bool? get isDartCoreEnum => _entity.type?.isDartCoreEnum;
  bool? get isDartCoreFunction => _entity.type?.isDartCoreFunction;
  bool? get isDartCoreInt => _entity.type?.isDartCoreInt;
  bool? get isDartCoreIterable => _entity.type?.isDartCoreIterable;
  bool? get isDartCoreList => _entity.type?.isDartCoreList;
  bool? get isDartCoreMap => _entity.type?.isDartCoreMap;
  bool? get isDartCoreNull => _entity.type?.isDartCoreNull;
  bool? get isDartCoreNum => _entity.type?.isDartCoreNum;
  bool? get isDartCoreObject => _entity.type?.isDartCoreObject;
  bool? get isDartCoreRecord => _entity.type?.isDartCoreRecord;
  bool? get isDartCoreSet => _entity.type?.isDartCoreSet;
  bool? get isDartCoreString => _entity.type?.isDartCoreString;
  bool? get isDartCoreSymbol => _entity.type?.isDartCoreSymbol;
  bool? get isDynamic => _entity.type?.isDynamic;
  bool? get isVoid => _entity.type?.isVoid;
  // NullabilitySuffix get nullabilitySuffix;
  String? get displayString =>
      _entity.type?.getDisplayString(withNullability: true);

  @override
  Map<String, dynamic> toMap() => super.toMap()
    ..addEntries(
      [
        MapEntry('question', question),
        MapEntry('type', type),
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
      ].whereNotNullAndNotFalse(),
    );
}
