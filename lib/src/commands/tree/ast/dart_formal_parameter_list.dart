import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_ast_node.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_format_parameter.dart';
import 'package:ast_explorer_cli/src/extensions/map_extensions.dart';

class DartFormalParameterList extends DartAstNode {
  const DartFormalParameterList(super.entity);

  FormalParameterList get _entity => entity as FormalParameterList;

  String? get leftDelimiter => _entity.leftDelimiter?.stringValue;
  String? get leftParenthesis => _entity.leftParenthesis.stringValue;
  List<ParameterElement?> get parameterElements =>
      _entity.parameterElements; // TODO(lsaudon): ParameterElement
  List<DartFormalParameter> get parameters =>
      _entity.parameters.map(DartFormalParameter.new).toList();
  String? get rightDelimiter => _entity.rightDelimiter?.stringValue;
  String? get rightParenthesis => _entity.rightParenthesis.stringValue;

  @override
  Map<String, Object?> toMap() {
    final list = parameters
        .map((final e) => e.toMap())
        .where((final e) => e.isNotEmpty)
        .toList();

    return super.toMap()
      ..addEntries(
        [
          MapEntry('leftDelimiter', leftDelimiter),
          MapEntry('leftParenthesis', leftParenthesis),
          MapEntry('parameters', list),
          MapEntry('rightDelimiter', rightDelimiter),
          MapEntry('rightParenthesis', rightParenthesis),
        ].whereNotNullAndNotFalseAndNotEmptyList(),
      );
  }
}
