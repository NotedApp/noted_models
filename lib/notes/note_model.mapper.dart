// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'note_model.dart';

class NoteModelMapper extends ClassMapperBase<NoteModel> {
  NoteModelMapper._();

  static NoteModelMapper? _instance;
  static NoteModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteModelMapper._());
      NotebookNoteModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'NoteModel';

  static String _$id(NoteModel v) => v.id;
  static const Field<NoteModel, String> _f$id = Field('id', _$id);
  static String _$title(NoteModel v) => v.title;
  static const Field<NoteModel, String> _f$title = Field('title', _$title);
  static Set<String> _$tags(NoteModel v) => v.tags;
  static const Field<NoteModel, Set<String>> _f$tags = Field('tags', _$tags);

  @override
  final Map<Symbol, Field<NoteModel, dynamic>> fields = const {
    #id: _f$id,
    #title: _f$title,
    #tags: _f$tags,
  };

  static NoteModel _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'NoteModel', 'plugin', '${data.value['plugin']}');
  }

  @override
  final Function instantiate = _instantiate;

  static NoteModel fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<NoteModel>(map));
  }

  static NoteModel fromJson(String json) {
    return _guard((c) => c.fromJson<NoteModel>(json));
  }
}

mixin NoteModelMappable {
  String toJson();
  Map<String, dynamic> toMap();
  NoteModelCopyWith<NoteModel, NoteModel, NoteModel> get copyWith;
}

abstract class NoteModelCopyWith<$R, $In extends NoteModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? title, Set<String>? tags});
  NoteModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class NotebookNoteModelMapper extends SubClassMapperBase<NotebookNoteModel> {
  NotebookNoteModelMapper._();

  static NotebookNoteModelMapper? _instance;
  static NotebookNoteModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NotebookNoteModelMapper._());
      NoteModelMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'NotebookNoteModel';

  static String _$id(NotebookNoteModel v) => v.id;
  static const Field<NotebookNoteModel, String> _f$id = Field('id', _$id);
  static String _$title(NotebookNoteModel v) => v.title;
  static const Field<NotebookNoteModel, String> _f$title =
      Field('title', _$title);
  static Set<String> _$tags(NotebookNoteModel v) => v.tags;
  static const Field<NotebookNoteModel, Set<String>> _f$tags =
      Field('tags', _$tags, opt: true, def: const {});
  static List<dynamic> _$document(NotebookNoteModel v) => v.document;
  static const Field<NotebookNoteModel, List<dynamic>> _f$document =
      Field('document', _$document);

  @override
  final Map<Symbol, Field<NotebookNoteModel, dynamic>> fields = const {
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
  late final ClassMapperBase superMapper = NoteModelMapper.ensureInitialized();

  static NotebookNoteModel _instantiate(DecodingData data) {
    return NotebookNoteModel(
        id: data.dec(_f$id),
        title: data.dec(_f$title),
        tags: data.dec(_f$tags),
        document: data.dec(_f$document));
  }

  @override
  final Function instantiate = _instantiate;

  static NotebookNoteModel fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<NotebookNoteModel>(map));
  }

  static NotebookNoteModel fromJson(String json) {
    return _guard((c) => c.fromJson<NotebookNoteModel>(json));
  }
}

mixin NotebookNoteModelMappable {
  String toJson() {
    return NotebookNoteModelMapper._guard(
        (c) => c.toJson(this as NotebookNoteModel));
  }

  Map<String, dynamic> toMap() {
    return NotebookNoteModelMapper._guard(
        (c) => c.toMap(this as NotebookNoteModel));
  }

  NotebookNoteModelCopyWith<NotebookNoteModel, NotebookNoteModel,
          NotebookNoteModel>
      get copyWith => _NotebookNoteModelCopyWithImpl(
          this as NotebookNoteModel, $identity, $identity);
  @override
  String toString() {
    return NotebookNoteModelMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            NotebookNoteModelMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return NotebookNoteModelMapper._guard((c) => c.hash(this));
  }
}

extension NotebookNoteModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NotebookNoteModel, $Out> {
  NotebookNoteModelCopyWith<$R, NotebookNoteModel, $Out>
      get $asNotebookNoteModel =>
          $base.as((v, t, t2) => _NotebookNoteModelCopyWithImpl(v, t, t2));
}

abstract class NotebookNoteModelCopyWith<$R, $In extends NotebookNoteModel,
    $Out> implements NoteModelCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>> get document;
  @override
  $R call(
      {String? id, String? title, Set<String>? tags, List<dynamic>? document});
  NotebookNoteModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NotebookNoteModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NotebookNoteModel, $Out>
    implements NotebookNoteModelCopyWith<$R, NotebookNoteModel, $Out> {
  _NotebookNoteModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NotebookNoteModel> $mapper =
      NotebookNoteModelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get document => ListCopyWith($value.document,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(document: v));
  @override
  $R call(
          {String? id,
          String? title,
          Set<String>? tags,
          List<dynamic>? document}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (title != null) #title: title,
        if (tags != null) #tags: tags,
        if (document != null) #document: document
      }));
  @override
  NotebookNoteModel $make(CopyWithData data) => NotebookNoteModel(
      id: data.get(#id, or: $value.id),
      title: data.get(#title, or: $value.title),
      tags: data.get(#tags, or: $value.tags),
      document: data.get(#document, or: $value.document));

  @override
  NotebookNoteModelCopyWith<$R2, NotebookNoteModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NotebookNoteModelCopyWithImpl($value, $cast, t);
}
