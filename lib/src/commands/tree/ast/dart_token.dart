import 'package:analyzer/dart/ast/token.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_syntatic_entity.dart';

/// DartToken
class DartToken extends DartSyntacticEntity {
  /// Constructor of DartToken
  const DartToken(super.entity);

  Token get _entity => entity as Token;

  /// value
  String get value => _entity.lexeme;

  @override
  Map<String, Object?> toMap() => super.toMap()..addAll({'value': value});
}
