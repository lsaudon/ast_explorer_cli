import 'package:analyzer/dart/ast/ast.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_ast_node.dart';

class DartBooleanLiteral extends DartAstNode {
  const DartBooleanLiteral(super.entity);

  BooleanLiteral get _entity => entity as BooleanLiteral;

  bool get value => _entity.value;

  @override
  Map<String, Object?> toMap() => super.toMap()..addAll({'value': value});
}
