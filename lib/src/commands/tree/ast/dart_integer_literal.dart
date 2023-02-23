import 'package:analyzer/dart/ast/ast.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_ast_node.dart';

class DartIntegerLiteral extends DartAstNode {
  const DartIntegerLiteral(super.entity);

  IntegerLiteral get _entity => entity as IntegerLiteral;

  int? get value => _entity.value;

  @override
  Map<String, Object?> toMap() => super.toMap()..addAll({'value': value});
}
