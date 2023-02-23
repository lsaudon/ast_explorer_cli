import 'package:analyzer/dart/ast/ast.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_ast_node.dart';

class DartDoubleLiteral extends DartAstNode {
  const DartDoubleLiteral(super.entity);

  DoubleLiteral get _entity => entity as DoubleLiteral;

  double get value => _entity.value;

  @override
  Map<String, Object?> toMap() => super.toMap()..addAll({'value': value});
}
