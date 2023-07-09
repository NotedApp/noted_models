// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'notebook_note.dart';

class NotebookNoteMapper extends SubClassMapperBase<NotebookNote> {
  NotebookNoteMapper._();

  static NotebookNoteMapper? _instance;
  static NotebookNoteMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NotebookNoteMapper._());
      NotedNoteMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'NotebookNote';

  static String _$id(NotebookNote v) => v.id;
  static const Field<NotebookNote, String> _f$id = Field('id', _$id);
  static String _$title(NotebookNote v) => v.title;
  static const Field<NotebookNote, String> _f$title = Field('title', _$title);
  static List<dynamic> _$document(NotebookNote v) => v.document;
  static const Field<NotebookNote, List<dynamic>> _f$document =
      Field('document', _$document);

  @override
  final Map<Symbol, Field<NotebookNote, dynamic>> fields = const {
    #id: _f$id,
    #title: _f$title,
    #document: _f$document,
  };

  @override
  final String discriminatorKey = 'space';
  @override
  final dynamic discriminatorValue = 'notebook';
  @override
  late final ClassMapperBase superMapper = NotedNoteMapper.ensureInitialized();

  static NotebookNote _instantiate(DecodingData data) {
    return NotebookNote(
        id: data.dec(_f$id),
        title: data.dec(_f$title),
        document: data.dec(_f$document));
  }

  @override
  final Function instantiate = _instantiate;

  static NotebookNote fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<NotebookNote>(map));
  }

  static NotebookNote fromJson(String json) {
    return _guard((c) => c.fromJson<NotebookNote>(json));
  }
}

mixin NotebookNoteMappable {
  String toJson() {
    return NotebookNoteMapper._guard((c) => c.toJson(this as NotebookNote));
  }

  Map<String, dynamic> toMap() {
    return NotebookNoteMapper._guard((c) => c.toMap(this as NotebookNote));
  }

  NotebookNoteCopyWith<NotebookNote, NotebookNote, NotebookNote> get copyWith =>
      _NotebookNoteCopyWithImpl(this as NotebookNote, $identity, $identity);
  @override
  String toString() {
    return NotebookNoteMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            NotebookNoteMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return NotebookNoteMapper._guard((c) => c.hash(this));
  }
}

extension NotebookNoteValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NotebookNote, $Out> {
  NotebookNoteCopyWith<$R, NotebookNote, $Out> get $asNotebookNote =>
      $base.as((v, t, t2) => _NotebookNoteCopyWithImpl(v, t, t2));
}

abstract class NotebookNoteCopyWith<$R, $In extends NotebookNote, $Out>
    implements NotedNoteCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>> get document;
  @override
  $R call({String? id, String? title, List<dynamic>? document});
  NotebookNoteCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NotebookNoteCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NotebookNote, $Out>
    implements NotebookNoteCopyWith<$R, NotebookNote, $Out> {
  _NotebookNoteCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NotebookNote> $mapper =
      NotebookNoteMapper.ensureInitialized();
  @override
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get document => ListCopyWith($value.document,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(document: v));
  @override
  $R call({String? id, String? title, List<dynamic>? document}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (title != null) #title: title,
        if (document != null) #document: document
      }));
  @override
  NotebookNote $make(CopyWithData data) => NotebookNote(
      id: data.get(#id, or: $value.id),
      title: data.get(#title, or: $value.title),
      document: data.get(#document, or: $value.document));

  @override
  NotebookNoteCopyWith<$R2, NotebookNote, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NotebookNoteCopyWithImpl($value, $cast, t);
}
