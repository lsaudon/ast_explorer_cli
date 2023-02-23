import 'package:analyzer/dart/ast/ast.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_ast_node.dart';

class DartFormalParameter extends DartAstNode {
  const DartFormalParameter(super.entity);

  FormalParameter get _entity => entity as FormalParameter;

  String? get name => _entity.name?.lexeme;

  @override
  Map<String, Object?> toMap() => super.toMap()..addAll({'name': name});
}
