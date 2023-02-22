// /// A node that declares one or more names within the scope of a compilation
// /// unit.
// ///
// ///    compilationUnitMember ::=
// ///        [ClassDeclaration]
// ///      | [MixinDeclaration]
// ///      | [ExtensionDeclaration]
// ///      | [EnumDeclaration]
// ///      | [TypeAlias]
// ///      | [FunctionDeclaration]
// ///      | [TopLevelVariableDeclaration]
// ///
// /// Clients may not extend, implement or mix-in this class.
// abstract class CompilationUnitMember implements Declaration {}

import 'package:analyzer/dart/ast/ast.dart';
import 'package:ast_explorer_cli/src/commands/tree/tree.dart';

/// DartCompilationUnitMember
class DartCompilationUnitMember extends DartAstNode {
  /// DartCompilationUnitMember
  const DartCompilationUnitMember({
    required super.offset,
    required super.end,
    required super.type,
    required super.childEntities,
  });

  /// DartCompilationUnitMember.build
  factory DartCompilationUnitMember.build(
    final CompilationUnitMember entity,
  ) {
    if (entity is FunctionDeclaration) {
      return DartFunctionDeclaration(
        offset: entity.offset,
        end: entity.end,
        type: entity.runtimeType,
        childEntities: entity.childEntities.map(DartSyntacticEntity.build),
      );
    }
    return DartCompilationUnitMember(
      offset: entity.offset,
      end: entity.end,
      type: entity.runtimeType,
      childEntities: entity.childEntities.map(DartSyntacticEntity.build),
    );
  }
}
