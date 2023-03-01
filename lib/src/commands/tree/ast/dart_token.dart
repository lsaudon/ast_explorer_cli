import 'package:analyzer/dart/ast/token.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_syntatic_entity.dart';

class DartToken extends DartSyntacticEntity {
  const DartToken(super.entity);

  Token get _entity => entity as Token;

  String get value => _entity.lexeme;

  @override
  Map<String, Object?> toMap() => super.toMap()..addAll({'value': value});
}
