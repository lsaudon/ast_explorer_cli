// FormalParameter
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_ast_node.dart';
import 'package:ast_explorer_cli/src/extensions/map_extensions.dart';

class DartFormalParameter extends DartAstNode {
  const DartFormalParameter(super.entity);

  FormalParameter get _entity => entity as FormalParameter;

  String? get covariantKeyword => _entity.covariantKeyword?.stringValue;
  ParameterElement? get declaredElement => _entity.declaredElement;
  bool get isConst => _entity.isConst;
  bool get isExplicitlyTyped => _entity.isExplicitlyTyped;
  bool get isFinal => _entity.isFinal;
  bool get isNamed => _entity.isNamed;
  bool get isOptional => _entity.isOptional;
  bool get isOptionalNamed => _entity.isOptionalNamed;
  bool get isOptionalPositional => _entity.isOptionalPositional;
  bool get isPositional => _entity.isPositional;
  bool get isRequired => _entity.isRequired;
  bool get isRequiredNamed => _entity.isRequiredNamed;
  bool get isRequiredPositional => _entity.isRequiredPositional;
  NodeList<Annotation> get metadata => _entity.metadata;
  String? get name => _entity.name?.stringValue;
  String? get requiredKeyword => _entity.requiredKeyword?.stringValue;

  @override
  Map<String, Object?> toMap() => super.toMap()
    ..addEntries(
      [
        MapEntry('covariantKeyword', covariantKeyword),
        MapEntry('declaredElement', declaredElement),
        MapEntry('isConst', isConst),
        MapEntry('isExplicitlyTyped', isExplicitlyTyped),
        MapEntry('isFinal', isFinal),
        MapEntry('isNamed', isNamed),
        MapEntry('isOptional', isOptional),
        MapEntry('isOptionalNamed', isOptionalNamed),
        MapEntry('isOptionalPositional', isOptionalPositional),
        MapEntry('isPositional', isPositional),
        MapEntry('isRequired', isRequired),
        MapEntry('isRequiredNamed', isRequiredNamed),
        MapEntry('metadata', metadata),
        MapEntry('name', name),
        MapEntry('requiredKeyword', requiredKeyword),
      ].whereNotNullAndNotFalseAndNotEmptyList(),
    );
}
