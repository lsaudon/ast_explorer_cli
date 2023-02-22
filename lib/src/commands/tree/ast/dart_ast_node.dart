import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/token.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_function_declaration.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_import_directive.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_named_compilation_unit_member.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_named_type.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_simple_string_literal.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_syntatic_entity.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_token.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_type_annotation.dart';
import 'package:ast_explorer_cli/src/extensions/map_extensions.dart';

class DartAstNode extends DartSyntacticEntity {
  const DartAstNode(super.entity);

  Iterable<DartSyntacticEntity> get childEntities =>
      (entity as AstNode).childEntities.map((final e) {
        if (e is AstNode) {
          if (e is NamedCompilationUnitMember) {
            if (e is FunctionDeclaration) {
              return DartFunctionDeclaration(e);
            }
            return DartNamedCompilationUnitMember(e);
          }
          if (e is SimpleStringLiteral) {
            return DartSimpleStringLiteral(e);
          }
          if (e is ImportDirective) {
            return DartImportDirective(e);
          }
          if (e is TypeAnnotation) {
            if (e is NamedType) {
              return DartNamedType(e);
            }
            return DartTypeAnnotation(e);
          }
          return DartAstNode(e);
        }
        if (e is Token) {
          return DartToken(e);
        }
        return DartSyntacticEntity(e);
      });

  @override
  Map<String, dynamic> toMap() {
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
        ].whereNotNullAndNotFalse(),
      );
  }
}
