import 'dart:convert';

import 'package:analyzer/dart/ast/syntactic_entity.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';

/// DartSyntacticEntity
class DartSyntacticEntity extends Equatable {
  /// Constructor of DartSyntacticEntity
  const DartSyntacticEntity(this.entity);

  /// Entity
  final SyntacticEntity entity;

  /// offset
  int get offset => entity.offset;

  /// end
  int get end => entity.end;

  /// runtimeType2
  String get runtimeType2 => entity.runtimeType.toString();

  @override
  List<Object> get props => [
        offset,
        end,
      ];

  /// toJson
  String toJson() => json.encode(
        Map.fromEntries(
          toMap().entries.toList()
            ..sort((final a, final b) => compareNatural(a.key, b.key)),
        ),
      );

  /// toMap
  Map<String, Object?> toMap() => {
        'offset': offset,
        'end': end,
        'type': runtimeType2,
      };
}
