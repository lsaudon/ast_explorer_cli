import 'package:analyzer/dart/ast/ast.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_ast_node.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_dart_type.dart';
import 'package:ast_explorer_cli/src/extensions/map_extensions.dart';

class DartSimpleIdentifier extends DartAstNode {
  const DartSimpleIdentifier(super.entity);

  SimpleIdentifier get _entity => entity as SimpleIdentifier;

  bool get isQualified => _entity.isQualified;
  List<DartDartType>? get tearOffTypeArgumentTypes =>
      _entity.tearOffTypeArgumentTypes?.map(DartDartType.new).toList();
  String? get token => _entity.token.stringValue;
  bool inDeclarationContext() => _entity.inDeclarationContext();
  bool inGetterContext() => _entity.inGetterContext();
  bool inSetterContext() => _entity.inSetterContext();

  @override
  Map<String, Object?> toMap() {
    final list = tearOffTypeArgumentTypes
        ?.map((final e) => e.toMap())
        .where((final e) => e.isNotEmpty)
        .toList();
    return super.toMap()
      ..addEntries(
        [
          MapEntry('isQualified', isQualified),
          MapEntry('tearOffTypeArgumentTypes', list),
          MapEntry('token', token),
          MapEntry('inDeclarationContext', inGetterContext()),
          MapEntry('inSetterContext', inSetterContext()),
        ].whereNotNullAndNotFalseAndNotEmptyList(),
      );
  }
}
