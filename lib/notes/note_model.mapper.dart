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
  static DateTime _$lastUpdatedUtc(NoteModel v) => v.lastUpdatedUtc;
  static const Field<NoteModel, DateTime> _f$lastUpdatedUtc =
      Field('lastUpdatedUtc', _$lastUpdatedUtc, opt: true);

  @override
  final MappableFields<NoteModel> fields = const {
    #id: _f$id,
    #title: _f$title,
    #tagIds: _f$tagIds,
    #lastUpdatedUtc: _f$lastUpdatedUtc,
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
  $R call(
      {String? id,
      String? title,
      Set<String>? tagIds,
      DateTime? lastUpdatedUtc});
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
  static DateTime _$lastUpdatedUtc(NotebookNoteModel v) => v.lastUpdatedUtc;
  static const Field<NotebookNoteModel, DateTime> _f$lastUpdatedUtc =
      Field('lastUpdatedUtc', _$lastUpdatedUtc, opt: true);

  @override
  final MappableFields<NotebookNoteModel> fields = const {
    #id: _f$id,
    #title: _f$title,
    #tagIds: _f$tagIds,
    #document: _f$document,
    #lastUpdatedUtc: _f$lastUpdatedUtc,
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
        document: data.dec(_f$document),
        lastUpdatedUtc: data.dec(_f$lastUpdatedUtc));
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
      List<dynamic>? document,
      DateTime? lastUpdatedUtc});
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
          List<dynamic>? document,
          Object? lastUpdatedUtc = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (title != null) #title: title,
        if (tagIds != null) #tagIds: tagIds,
        if (document != null) #document: document,
        if (lastUpdatedUtc != $none) #lastUpdatedUtc: lastUpdatedUtc
      }));
  @override
  NotebookNoteModel $make(CopyWithData data) => NotebookNoteModel(
      id: data.get(#id, or: $value.id),
      title: data.get(#title, or: $value.title),
      tagIds: data.get(#tagIds, or: $value.tagIds),
      document: data.get(#document, or: $value.document),
      lastUpdatedUtc: data.get(#lastUpdatedUtc, or: $value.lastUpdatedUtc));

  @override
  NotebookNoteModelCopyWith<$R2, NotebookNoteModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NotebookNoteModelCopyWithImpl($value, $cast, t);
}

class RecipeTypeMapper extends EnumMapper<RecipeType> {
  RecipeTypeMapper._();

  static RecipeTypeMapper? _instance;
  static RecipeTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RecipeTypeMapper._());
    }
    return _instance!;
  }

  static RecipeType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  RecipeType decode(dynamic value) {
    switch (value) {
      case 'breakfast':
        return RecipeType.breakfast;
      case 'lunch':
        return RecipeType.lunch;
      case 'dinner':
        return RecipeType.dinner;
      case 'snack':
        return RecipeType.snack;
      case 'drink':
        return RecipeType.drink;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(RecipeType self) {
    switch (self) {
      case RecipeType.breakfast:
        return 'breakfast';
      case RecipeType.lunch:
        return 'lunch';
      case RecipeType.dinner:
        return 'dinner';
      case RecipeType.snack:
        return 'snack';
      case RecipeType.drink:
        return 'drink';
    }
  }
}

extension RecipeTypeMapperExtension on RecipeType {
  String toValue() {
    RecipeTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<RecipeType>(this) as String;
  }
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
  static String _$prepTime(CookbookNoteModel v) => v.prepTime;
  static const Field<CookbookNoteModel, String> _f$prepTime =
      Field('prepTime', _$prepTime);
  static String _$cookTime(CookbookNoteModel v) => v.cookTime;
  static const Field<CookbookNoteModel, String> _f$cookTime =
      Field('cookTime', _$cookTime);
  static int _$difficulty(CookbookNoteModel v) => v.difficulty;
  static const Field<CookbookNoteModel, int> _f$difficulty =
      Field('difficulty', _$difficulty);
  static Set<String> _$types(CookbookNoteModel v) => v.types;
  static const Field<CookbookNoteModel, Set<String>> _f$types =
      Field('types', _$types, opt: true, def: const {});
  static Set<String> _$cuisines(CookbookNoteModel v) => v.cuisines;
  static const Field<CookbookNoteModel, Set<String>> _f$cuisines =
      Field('cuisines', _$cuisines, opt: true, def: const {});
  static List<dynamic> _$document(CookbookNoteModel v) => v.document;
  static const Field<CookbookNoteModel, List<dynamic>> _f$document =
      Field('document', _$document);
  static DateTime _$lastUpdatedUtc(CookbookNoteModel v) => v.lastUpdatedUtc;
  static const Field<CookbookNoteModel, DateTime> _f$lastUpdatedUtc =
      Field('lastUpdatedUtc', _$lastUpdatedUtc, opt: true);

  @override
  final MappableFields<CookbookNoteModel> fields = const {
    #id: _f$id,
    #title: _f$title,
    #tagIds: _f$tagIds,
    #url: _f$url,
    #prepTime: _f$prepTime,
    #cookTime: _f$cookTime,
    #difficulty: _f$difficulty,
    #types: _f$types,
    #cuisines: _f$cuisines,
    #document: _f$document,
    #lastUpdatedUtc: _f$lastUpdatedUtc,
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
        prepTime: data.dec(_f$prepTime),
        cookTime: data.dec(_f$cookTime),
        difficulty: data.dec(_f$difficulty),
        types: data.dec(_f$types),
        cuisines: data.dec(_f$cuisines),
        document: data.dec(_f$document),
        lastUpdatedUtc: data.dec(_f$lastUpdatedUtc));
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
      String? prepTime,
      String? cookTime,
      int? difficulty,
      Set<String>? types,
      Set<String>? cuisines,
      List<dynamic>? document,
      DateTime? lastUpdatedUtc});
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
          String? prepTime,
          String? cookTime,
          int? difficulty,
          Set<String>? types,
          Set<String>? cuisines,
          List<dynamic>? document,
          Object? lastUpdatedUtc = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (title != null) #title: title,
        if (tagIds != null) #tagIds: tagIds,
        if (url != null) #url: url,
        if (prepTime != null) #prepTime: prepTime,
        if (cookTime != null) #cookTime: cookTime,
        if (difficulty != null) #difficulty: difficulty,
        if (types != null) #types: types,
        if (cuisines != null) #cuisines: cuisines,
        if (document != null) #document: document,
        if (lastUpdatedUtc != $none) #lastUpdatedUtc: lastUpdatedUtc
      }));
  @override
  CookbookNoteModel $make(CopyWithData data) => CookbookNoteModel(
      id: data.get(#id, or: $value.id),
      title: data.get(#title, or: $value.title),
      tagIds: data.get(#tagIds, or: $value.tagIds),
      url: data.get(#url, or: $value.url),
      prepTime: data.get(#prepTime, or: $value.prepTime),
      cookTime: data.get(#cookTime, or: $value.cookTime),
      difficulty: data.get(#difficulty, or: $value.difficulty),
      types: data.get(#types, or: $value.types),
      cuisines: data.get(#cuisines, or: $value.cuisines),
      document: data.get(#document, or: $value.document),
      lastUpdatedUtc: data.get(#lastUpdatedUtc, or: $value.lastUpdatedUtc));

  @override
  CookbookNoteModelCopyWith<$R2, CookbookNoteModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _CookbookNoteModelCopyWithImpl($value, $cast, t);
}
