import 'package:analyzer/dart/ast/ast.dart';
import 'package:ast_explorer_cli/src/commands/tree/tree.dart';

/// DartCompilationUnit
class DartCompilationUnit extends DartAstNode {
  /// DartCompilationUnit
  const DartCompilationUnit({
    required this.declarations,
    required super.offset,
    required super.end,
    required super.type,
    required super.childEntities,
  });

  /// DartCompilationUnit.build
  factory DartCompilationUnit.build(final CompilationUnit compilationUnit) =>
      DartCompilationUnit(
        offset: compilationUnit.offset,
        end: compilationUnit.end,
        type: compilationUnit.runtimeType,
        declarations: compilationUnit.declarations
            .map(DartCompilationUnitMember.build)
            .toList(),
        childEntities: const [],
      );

  /// NodeList<CompilationUnitMember> get declarations;
  final List<DartCompilationUnitMember> declarations;

  @override
  List<Object> get props => super.props
    ..addAll([
      declarations,
    ]);

  @override
  Map<String, dynamic> toMap() => super.toMap()
    ..addAll({
      'declarations': declarations.map((final e) => e.toMap()).toList(),
    });
}
