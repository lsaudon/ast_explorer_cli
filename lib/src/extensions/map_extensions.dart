extension ListOfMapEntryExtension on List<MapEntry<String, Object?>> {
  Iterable<MapEntry<String, Object?>> whereNotNullAndNotFalse() => where(
        (final e) => e.value != null,
      ).where((final e) => e.value != false);
}
