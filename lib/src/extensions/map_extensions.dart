extension ListOfMapEntryExtension on List<MapEntry<String, Object?>> {
  Iterable<MapEntry<String, Object?>>
      whereNotNullAndNotFalseAndNotEmptyList() => where(
            (final e) => e.value != null,
          ).where((final e) => e.value != false).where((final e) {
            final value = e.value;
            if (value is Iterable) {
              return value.isNotEmpty;
            }
            return true;
          });
}
