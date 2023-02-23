import 'package:analyzer/dart/ast/ast.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_ast_node.dart';
import 'package:ast_explorer_cli/src/extensions/map_extensions.dart';

class DartNamedCompilationUnitMember extends DartAstNode {
  const DartNamedCompilationUnitMember(super.entity);

  String? get name => (entity as NamedCompilationUnitMember).name.stringValue;

  @override
  Map<String, Object?> toMap() => super.toMap()
    ..addEntries(
      [MapEntry('name', name)].whereNotNullAndNotFalseAndNotEmptyList(),
    );
}
