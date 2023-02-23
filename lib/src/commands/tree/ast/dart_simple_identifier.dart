import 'package:analyzer/dart/ast/ast.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_ast_node.dart';

class DartSimpleIdentifier extends DartAstNode {
  const DartSimpleIdentifier(super.entity);

  SimpleIdentifier get _entity => entity as SimpleIdentifier;

  String get token => _entity.token.lexeme;

  @override
  Map<String, Object?> toMap() => super.toMap()..addAll({'value': token});
}
