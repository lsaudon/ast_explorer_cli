import 'package:analyzer/dart/ast/ast.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_ast_node.dart';

class DartStringLiteral extends DartAstNode {
  const DartStringLiteral(super.entity);

  StringLiteral get _entity => entity as StringLiteral;

  String? get value => _entity.stringValue;

  @override
  Map<String, Object?> toMap() => super.toMap()..addAll({'value': value});
}
