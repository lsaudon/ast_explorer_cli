import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/token.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_syntatic_entity.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_token.dart';

/// DartAstNode
class DartAstNode extends DartSyntacticEntity {
  /// Constructor of DartAstNode
  const DartAstNode(super.entity);

  /// childEntities
  Iterable<DartSyntacticEntity> get childEntities =>
      (entity as AstNode).childEntities.map((final e) {
        if (e is AstNode) {
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
