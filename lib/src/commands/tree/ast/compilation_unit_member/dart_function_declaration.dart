import 'package:analyzer/dart/ast/ast.dart';
import 'package:ast_explorer_cli/src/commands/tree/tree.dart';

/// DartFunctionDeclaration
class DartFunctionDeclaration extends DartCompilationUnitMember {
  /// DartFunctionDeclaration
  const DartFunctionDeclaration({
    required super.offset,
    required super.end,
    required super.type,
    required super.childEntities,
  });

  /// DartFunctionDeclaration.build
  factory DartFunctionDeclaration.build(
    final FunctionDeclaration functionDeclaration,
  ) =>
      DartFunctionDeclaration(
        offset: functionDeclaration.offset,
        end: functionDeclaration.end,
        type: functionDeclaration.runtimeType,
        childEntities:
            functionDeclaration.childEntities.map(DartSyntacticEntity.build),
      );
}
