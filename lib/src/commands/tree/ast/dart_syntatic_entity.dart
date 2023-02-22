import 'dart:convert';

import 'package:analyzer/dart/ast/syntactic_entity.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';

class DartSyntacticEntity extends Equatable {
  const DartSyntacticEntity(this.entity);

  final SyntacticEntity entity;

  int get offset => entity.offset;

  int get end => entity.end;

  String get runtimeType2 => entity.runtimeType.toString();

  @override
  List<Object> get props => [
        offset,
        end,
      ];

  String toJson() => json.encode(
        Map.fromEntries(
          toMap().entries.toList()
            ..sort((final a, final b) => compareNatural(a.key, b.key)),
        ),
      );

  Map<String, dynamic> toMap() => {
        'offset': offset,
        'end': end,
        'type': runtimeType2,
      };
}
