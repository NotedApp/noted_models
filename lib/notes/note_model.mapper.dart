// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'note_model.dart';

class NoteModelMapper extends ClassMapperBase<NoteModel> {
  NoteModelMapper._();

  static NoteModelMapper? _instance;
  static NoteModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteModelMapper._());
      NotebookNoteModelMapper.ensureInitialized();
      CookbookNoteModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NoteModel';

  static String _$id(NoteModel v) => v.id;
  static const Field<NoteModel, String> _f$id = Field('id', _$id);
  static String _$title(NoteModel v) => v.title;
  static const Field<NoteModel, String> _f$title = Field('title', _$title);
  static Set<String> _$tagIds(NoteModel v) => v.tagIds;
  static const Field<NoteModel, Set<String>> _f$tagIds =
      Field('tagIds', _$tagIds);

  @override
  final Map<Symbol, Field<NoteModel, dynamic>> fields = const {
    #id: _f$id,
    #title: _f$title,
    #tagIds: _f$tagIds,
  };

  static NoteModel _instantiate(DecodingData data) {
    throw MapperException.missingSubclass(
        'NoteModel', 'plugin', '${data.value['plugin']}');
  }

  @override
  final Function instantiate = _instantiate;

  static NoteModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NoteModel>(map);
  }

  static NoteModel fromJson(String json) {
    return ensureInitialized().decodeJson<NoteModel>(json);
  }
}

mixin NoteModelMappable {
  String toJson();
  Map<String, dynamic> toMap();
  NoteModelCopyWith<NoteModel, NoteModel, NoteModel> get copyWith;
}

abstract class NoteModelCopyWith<$R, $In extends NoteModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? title, Set<String>? tagIds});
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

  @override
  final String id = 'NotebookNoteModel';

  static String _$id(NotebookNoteModel v) => v.id;
  static const Field<NotebookNoteModel, String> _f$id = Field('id', _$id);
  static String _$title(NotebookNoteModel v) => v.title;
  static const Field<NotebookNoteModel, String> _f$title =
      Field('title', _$title);
  static Set<String> _$tagIds(NotebookNoteModel v) => v.tagIds;
  static const Field<NotebookNoteModel, Set<String>> _f$tagIds =
      Field('tagIds', _$tagIds, opt: true, def: const {});
  static List<dynamic> _$document(NotebookNoteModel v) => v.document;
  static const Field<NotebookNoteModel, List<dynamic>> _f$document =
      Field('document', _$document);

  @override
  final Map<Symbol, Field<NotebookNoteModel, dynamic>> fields = const {
    #id: _f$id,
    #title: _f$title,
    #tagIds: _f$tagIds,
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
        tagIds: data.dec(_f$tagIds),
        document: data.dec(_f$document));
  }

  @override
  final Function instantiate = _instantiate;

  static NotebookNoteModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NotebookNoteModel>(map);
  }

  static NotebookNoteModel fromJson(String json) {
    return ensureInitialized().decodeJson<NotebookNoteModel>(json);
  }
}

mixin NotebookNoteModelMappable {
  String toJson() {
    return NotebookNoteModelMapper.ensureInitialized()
        .encodeJson<NotebookNoteModel>(this as NotebookNoteModel);
  }

  Map<String, dynamic> toMap() {
    return NotebookNoteModelMapper.ensureInitialized()
        .encodeMap<NotebookNoteModel>(this as NotebookNoteModel);
  }

  NotebookNoteModelCopyWith<NotebookNoteModel, NotebookNoteModel,
          NotebookNoteModel>
      get copyWith => _NotebookNoteModelCopyWithImpl(
          this as NotebookNoteModel, $identity, $identity);
  @override
  String toString() {
    return NotebookNoteModelMapper.ensureInitialized()
        .stringifyValue(this as NotebookNoteModel);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            NotebookNoteModelMapper.ensureInitialized()
                .isValueEqual(this as NotebookNoteModel, other));
  }

  @override
  int get hashCode {
    return NotebookNoteModelMapper.ensureInitialized()
        .hashValue(this as NotebookNoteModel);
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
      {String? id,
      String? title,
      Set<String>? tagIds,
      List<dynamic>? document});
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
          Set<String>? tagIds,
          List<dynamic>? document}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (title != null) #title: title,
        if (tagIds != null) #tagIds: tagIds,
        if (document != null) #document: document
      }));
  @override
  NotebookNoteModel $make(CopyWithData data) => NotebookNoteModel(
      id: data.get(#id, or: $value.id),
      title: data.get(#title, or: $value.title),
      tagIds: data.get(#tagIds, or: $value.tagIds),
      document: data.get(#document, or: $value.document));

  @override
  NotebookNoteModelCopyWith<$R2, NotebookNoteModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NotebookNoteModelCopyWithImpl($value, $cast, t);
}

class CookbookNoteModelMapper extends SubClassMapperBase<CookbookNoteModel> {
  CookbookNoteModelMapper._();

  static CookbookNoteModelMapper? _instance;
  static CookbookNoteModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CookbookNoteModelMapper._());
      NoteModelMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'CookbookNoteModel';

  static String _$id(CookbookNoteModel v) => v.id;
  static const Field<CookbookNoteModel, String> _f$id = Field('id', _$id);
  static String _$title(CookbookNoteModel v) => v.title;
  static const Field<CookbookNoteModel, String> _f$title =
      Field('title', _$title);
  static Set<String> _$tagIds(CookbookNoteModel v) => v.tagIds;
  static const Field<CookbookNoteModel, Set<String>> _f$tagIds =
      Field('tagIds', _$tagIds, opt: true, def: const {});
  static String _$url(CookbookNoteModel v) => v.url;
  static const Field<CookbookNoteModel, String> _f$url = Field('url', _$url);
  static List<dynamic> _$document(CookbookNoteModel v) => v.document;
  static const Field<CookbookNoteModel, List<dynamic>> _f$document =
      Field('document', _$document);

  @override
  final Map<Symbol, Field<CookbookNoteModel, dynamic>> fields = const {
    #id: _f$id,
    #title: _f$title,
    #tagIds: _f$tagIds,
    #url: _f$url,
    #document: _f$document,
  };

  @override
  final String discriminatorKey = 'plugin';
  @override
  final dynamic discriminatorValue = 'cookbook';
  @override
  late final ClassMapperBase superMapper = NoteModelMapper.ensureInitialized();

  static CookbookNoteModel _instantiate(DecodingData data) {
    return CookbookNoteModel(
        id: data.dec(_f$id),
        title: data.dec(_f$title),
        tagIds: data.dec(_f$tagIds),
        url: data.dec(_f$url),
        document: data.dec(_f$document));
  }

  @override
  final Function instantiate = _instantiate;

  static CookbookNoteModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CookbookNoteModel>(map);
  }

  static CookbookNoteModel fromJson(String json) {
    return ensureInitialized().decodeJson<CookbookNoteModel>(json);
  }
}

mixin CookbookNoteModelMappable {
  String toJson() {
    return CookbookNoteModelMapper.ensureInitialized()
        .encodeJson<CookbookNoteModel>(this as CookbookNoteModel);
  }

  Map<String, dynamic> toMap() {
    return CookbookNoteModelMapper.ensureInitialized()
        .encodeMap<CookbookNoteModel>(this as CookbookNoteModel);
  }

  CookbookNoteModelCopyWith<CookbookNoteModel, CookbookNoteModel,
          CookbookNoteModel>
      get copyWith => _CookbookNoteModelCopyWithImpl(
          this as CookbookNoteModel, $identity, $identity);
  @override
  String toString() {
    return CookbookNoteModelMapper.ensureInitialized()
        .stringifyValue(this as CookbookNoteModel);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            CookbookNoteModelMapper.ensureInitialized()
                .isValueEqual(this as CookbookNoteModel, other));
  }

  @override
  int get hashCode {
    return CookbookNoteModelMapper.ensureInitialized()
        .hashValue(this as CookbookNoteModel);
  }
}

extension CookbookNoteModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CookbookNoteModel, $Out> {
  CookbookNoteModelCopyWith<$R, CookbookNoteModel, $Out>
      get $asCookbookNoteModel =>
          $base.as((v, t, t2) => _CookbookNoteModelCopyWithImpl(v, t, t2));
}

abstract class CookbookNoteModelCopyWith<$R, $In extends CookbookNoteModel,
    $Out> implements NoteModelCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>> get document;
  @override
  $R call(
      {String? id,
      String? title,
      Set<String>? tagIds,
      String? url,
      List<dynamic>? document});
  CookbookNoteModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CookbookNoteModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CookbookNoteModel, $Out>
    implements CookbookNoteModelCopyWith<$R, CookbookNoteModel, $Out> {
  _CookbookNoteModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CookbookNoteModel> $mapper =
      CookbookNoteModelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get document => ListCopyWith($value.document,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(document: v));
  @override
  $R call(
          {String? id,
          String? title,
          Set<String>? tagIds,
          String? url,
          List<dynamic>? document}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (title != null) #title: title,
        if (tagIds != null) #tagIds: tagIds,
        if (url != null) #url: url,
        if (document != null) #document: document
      }));
  @override
  CookbookNoteModel $make(CopyWithData data) => CookbookNoteModel(
      id: data.get(#id, or: $value.id),
      title: data.get(#title, or: $value.title),
      tagIds: data.get(#tagIds, or: $value.tagIds),
      url: data.get(#url, or: $value.url),
      document: data.get(#document, or: $value.document));

  @override
  CookbookNoteModelCopyWith<$R2, CookbookNoteModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CookbookNoteModelCopyWithImpl($value, $cast, t);
}
