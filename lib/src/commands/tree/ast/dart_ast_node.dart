import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/token.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_boolean_literal.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_double_literal.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_formal_parameter.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_integer_literal.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_simple_identifier.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_string_literal.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_syntatic_entity.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_token.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_variable_declaration.dart';

class DartAstNode extends DartSyntacticEntity {
  const DartAstNode(super.entity);

  Iterable<DartSyntacticEntity> get childEntities =>
      (entity as AstNode).childEntities.map((final e) {
        if (e is AstNode) {
          if (e is BooleanLiteral) {
            return DartBooleanLiteral(e);
          }
          if (e is DoubleLiteral) {
            return DartDoubleLiteral(e);
          }
          if (e is FormalParameter) {
            return DartFormalParameter(e);
          }
          if (e is IntegerLiteral) {
            return DartIntegerLiteral(e);
          }
          if (e is SimpleIdentifier) {
            return DartSimpleIdentifier(e);
          }
          if (e is StringLiteral) {
            return DartStringLiteral(e);
          }
          if (e is VariableDeclaration) {
            return DartVariableDeclaration(e);
          }
          return DartAstNode(e);
        }
        if (e is Token) {
          return DartToken(e);
        }
        return DartSyntacticEntity(e);
      });

  @override
  Map<String, Object?> toMap() {
    final list = childEntities
        .map((final e) => e.toMap())
        .where((final e) => e.isNotEmpty)
        .toList();

    return super.toMap()
      ..addEntries(
        [
          if (list.isNotEmpty)
            MapEntry(
              'childEntities',
              list,
            )
        ],
      );
  }
}
