import 'dart:convert';

import 'package:analyzer/dart/ast/syntactic_entity.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';

/// DartSyntacticEntity
class DartSyntacticEntity extends Equatable {
  /// DartSyntacticEntity
  const DartSyntacticEntity({
    required this.offset,
    required this.end,
  });

  /// DartSyntacticEntity.build
  DartSyntacticEntity.build(
    final SyntacticEntity entity,
  ) : this(
          offset: entity.offset,
          end: entity.end,
        );

  /// DartSyntacticEntity.offset
  final int offset;

  /// DartSyntacticEntity.end
  final int end;

  @override
  List<Object> get props => [
        offset,
        end,
      ];

  /// toJson()
  String toJson() => json.encode(
        Map.fromEntries(
          toMap().entries.toList()
            ..sort((final a, final b) => compareNatural(a.key, b.key)),
        ),
      );

  /// toMap()
  Map<String, dynamic> toMap() => {
        'offset': offset,
        'end': end,
      };
}
