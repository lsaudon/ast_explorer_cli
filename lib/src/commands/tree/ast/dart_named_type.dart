import 'package:analyzer/dart/ast/ast.dart';
import 'package:ast_explorer_cli/src/commands/tree/ast/dart_type_annotation.dart';
import 'package:ast_explorer_cli/src/extensions/map_extensions.dart';

class DartNamedType extends DartTypeAnnotation {
  const DartNamedType(super.entity);

  NamedType get _entity => entity as NamedType;

  bool get isDeferred => _entity.isDeferred;
  Identifier get name => _entity.name;
  NodeList<TypeAnnotation>? get arguments => _entity.typeArguments?.arguments;

  @override
  Map<String, dynamic> toMap() => super.toMap()
    ..addEntries(
      [
        MapEntry('isDeferred', isDeferred),
        MapEntry('name', name.toString()),
        MapEntry('arguments', arguments.toString()),
      ].whereNotNullAndNotFalse(),
    );
}
