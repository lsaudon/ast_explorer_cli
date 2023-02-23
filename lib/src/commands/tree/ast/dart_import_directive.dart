import 'package:analyzer/dart/ast/ast.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_ast_node.dart';
import 'package:ast_explorer_cli/src/extensions/map_extensions.dart';

class DartImportDirective extends DartAstNode {
  const DartImportDirective(super.entity);

  ImportDirective get _entity => entity as ImportDirective;

  String? get asKeyword => _entity.asKeyword?.lexeme;
  String? get deferredKeyword => _entity.deferredKeyword?.lexeme;
  String get importKeyword => _entity.importKeyword.lexeme;
  String? get prefix => _entity.prefix?.name;

  @override
  Map<String, Object?> toMap() => super.toMap()
    ..addEntries(
      [
        MapEntry('asKeyword', asKeyword),
        MapEntry('deferredKeyword', deferredKeyword),
        MapEntry('importKeyword', importKeyword),
        MapEntry('prefix', prefix),
      ].whereNotNullAndNotFalseAndNotEmptyList(),
    );
}
