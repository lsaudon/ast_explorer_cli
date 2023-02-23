import 'package:analyzer/dart/ast/ast.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_ast_node.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_syntatic_entity.dart';

class DartSimpleStringLiteral extends DartAstNode {
  const DartSimpleStringLiteral(super.entity);

  SimpleStringLiteral get _entity => entity as SimpleStringLiteral;

  @override
  Iterable<DartSyntacticEntity> get childEntities => [];

  String get value => _entity.value;

  @override
  Map<String, Object?> toMap() => super.toMap()..addAll({'value': value});
}
