// FunctionDeclaration

import 'package:analyzer/dart/ast/ast.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_named_compilation_unit_member.dart';
import 'package:ast_explorer_cli/src/extensions/map_extensions.dart';

class DartFunctionDeclaration extends DartNamedCompilationUnitMember {
  const DartFunctionDeclaration(super.entity);

  FunctionDeclaration get _entity => entity as FunctionDeclaration;

  String? get externalKeyword => _entity.externalKeyword?.stringValue;

  FunctionExpression get functionExpression => _entity.functionExpression;

  bool get isGetter => _entity.isGetter;

  bool get isSetter => _entity.isSetter;

  String? get propertyKeyword => _entity.propertyKeyword?.stringValue;

  TypeAnnotation? get returnType => _entity.returnType;

  @override
  Map<String, dynamic> toMap() => super.toMap()
    ..addEntries(
      [
        MapEntry('externalKeyword', externalKeyword),
        MapEntry('isGetter', isGetter),
        MapEntry('isSetter', isSetter),
        MapEntry('propertyKeyword', propertyKeyword),
        MapEntry('returnType', returnType.toString()),
      ].whereNotNullAndNotFalse(),
    );
}
