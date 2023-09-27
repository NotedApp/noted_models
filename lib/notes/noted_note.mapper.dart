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
      NotebookNoteMapper.ensureInitialized();
      NotedTagMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'NotedNote';

  static String _$id(NotedNote v) => v.id;
  static const Field<NotedNote, String> _f$id = Field('id', _$id);
  static String _$title(NotedNote v) => v.title;
  static const Field<NotedNote, String> _f$title = Field('title', _$title);
  static Set<NotedTag> _$tags(NotedNote v) => v.tags;
  static const Field<NotedNote, Set<NotedTag>> _f$tags = Field('tags', _$tags);

  @override
  final Map<Symbol, Field<NotedNote, dynamic>> fields = const {
    #id: _f$id,
    #title: _f$title,
    #tags: _f$tags,
  };

  static NotedNote _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'NotedNote', 'plugin', '${data.value['plugin']}');
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
  $R call({String? id, String? title, Set<NotedTag>? tags});
  NotedNoteCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class NotebookNoteMapper extends SubClassMapperBase<NotebookNote> {
  NotebookNoteMapper._();

  static NotebookNoteMapper? _instance;
  static NotebookNoteMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NotebookNoteMapper._());
      NotedNoteMapper.ensureInitialized().addSubMapper(_instance!);
      NotedTagMapper.ensureInitialized();
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
  static Set<NotedTag> _$tags(NotebookNote v) => v.tags;
  static const Field<NotebookNote, Set<NotedTag>> _f$tags =
      Field('tags', _$tags, opt: true, def: const {});
  static List<dynamic> _$document(NotebookNote v) => v.document;
  static const Field<NotebookNote, List<dynamic>> _f$document =
      Field('document', _$document);

  @override
  final Map<Symbol, Field<NotebookNote, dynamic>> fields = const {
    #id: _f$id,
    #title: _f$title,
    #tags: _f$tags,
    #document: _f$document,
  };

  @override
  final String discriminatorKey = 'plugin';
  @override
  final dynamic discriminatorValue = 'notebook';
  @override
  late final ClassMapperBase superMapper = NotedNoteMapper.ensureInitialized();

  static NotebookNote _instantiate(DecodingData data) {
    return NotebookNote(
        id: data.dec(_f$id),
        title: data.dec(_f$title),
        tags: data.dec(_f$tags),
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
  $R call(
      {String? id,
      String? title,
      Set<NotedTag>? tags,
      List<dynamic>? document});
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
  $R call(
          {String? id,
          String? title,
          Set<NotedTag>? tags,
          List<dynamic>? document}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (title != null) #title: title,
        if (tags != null) #tags: tags,
        if (document != null) #document: document
      }));
  @override
  NotebookNote $make(CopyWithData data) => NotebookNote(
      id: data.get(#id, or: $value.id),
      title: data.get(#title, or: $value.title),
      tags: data.get(#tags, or: $value.tags),
      document: data.get(#document, or: $value.document));

  @override
  NotebookNoteCopyWith<$R2, NotebookNote, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NotebookNoteCopyWithImpl($value, $cast, t);
}
