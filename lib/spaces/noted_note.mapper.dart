// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'noted_note.dart';

class NotedNoteMapper extends ClassMapperBase<NotedNote> {
  NotedNoteMapper._();

  static NotedNoteMapper? _instance;
  static NotedNoteMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NotedNoteMapper._());
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'NotedNote';

  @override
  final Map<Symbol, Field<NotedNote, dynamic>> fields = const {};

  static NotedNote _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('NotedNote');
  }

  @override
  final Function instantiate = _instantiate;

  static NotedNote fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<NotedNote>(map));
  }

  static NotedNote fromJson(String json) {
    return _guard((c) => c.fromJson<NotedNote>(json));
  }
}

mixin NotedNoteMappable {
  String toJson();
  Map<String, dynamic> toMap();
  NotedNoteCopyWith<NotedNote, NotedNote, NotedNote> get copyWith;
}

abstract class NotedNoteCopyWith<$R, $In extends NotedNote, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  NotedNoteCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}
