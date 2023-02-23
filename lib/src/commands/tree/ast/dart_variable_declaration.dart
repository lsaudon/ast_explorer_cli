import 'package:analyzer/dart/ast/ast.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_ast_node.dart';

class DartVariableDeclaration extends DartAstNode {
  const DartVariableDeclaration(super.entity);

  VariableDeclaration get _entity => entity as VariableDeclaration;

  String get name => _entity.name.lexeme;

  @override
  Map<String, Object?> toMap() => super.toMap()..addAll({'name': name});
}
