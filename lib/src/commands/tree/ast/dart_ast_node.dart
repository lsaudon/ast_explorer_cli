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

/// DartAstNode
class DartAstNode extends DartSyntacticEntity {
  /// DartAstNode
  const DartAstNode({
    required super.offset,
    required super.end,
    required this.type,
    required this.childEntities,
  });

  /// DartAstNode.build
  factory DartAstNode.build(
    final AstNode astNode,
  ) =>
      DartAstNode(
        offset: astNode.offset,
        end: astNode.end,
        type: astNode.runtimeType,
        childEntities: astNode.childEntities.map(DartSyntacticEntity.build),
      );

  /// A representation of the runtime type of the object.
  final Type type;

  /// Return an iterator that can be used to iterate through all the entities
  /// (either AST nodes or tokens) that make up the contents of this node,
  /// including doc comments but excluding other comments.
  final Iterable<DartSyntacticEntity> childEntities;

  @override
  List<Object> get props => super.props
    ..addAll([
      type,
      childEntities,
    ]);

  @override
  Map<String, dynamic> toMap() => super.toMap()
    ..addAll({
      'type': type.toString(),
      'childEntities': childEntities.map((final e) => e.toMap()).toList(),
    });
}
