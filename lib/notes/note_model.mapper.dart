// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'note_model.dart';

class NoteModelMapper extends ClassMapperBase<NoteModel> {
  NoteModelMapper._();

  static NoteModelMapper? _instance;
  static NoteModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteModelMapper._());
      NoteDefaultFieldsMapper.ensureInitialized();
      NoteFieldMapper.ensureInitialized();
      NoteEditLayoutMapper.ensureInitialized();
      NoteCardLayoutMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NoteModel';

  static String _$id(NoteModel v) => v.id;
  static const Field<NoteModel, String> _f$id = Field('id', _$id);
  static String _$templateId(NoteModel v) => v.templateId;
  static const Field<NoteModel, String> _f$templateId =
      Field('templateId', _$templateId);
  static NoteDefaultFields _$defaultFields(NoteModel v) => v.defaultFields;
  static const Field<NoteModel, NoteDefaultFields> _f$defaultFields = Field(
      'defaultFields', _$defaultFields,
      opt: true, def: const NoteDefaultFields());
  static Map<String, NoteField<dynamic>> _$fields(NoteModel v) => v.fields;
  static const Field<NoteModel, Map<String, NoteField<dynamic>>> _f$fields =
      Field('fields', _$fields, opt: true, def: const {});
  static NoteEditLayout _$editLayout(NoteModel v) => v.editLayout;
  static const Field<NoteModel, NoteEditLayout> _f$editLayout =
      Field('editLayout', _$editLayout, opt: true, def: const NoteEditLayout());
  static NoteCardLayout _$cardLayout(NoteModel v) => v.cardLayout;
  static const Field<NoteModel, NoteCardLayout> _f$cardLayout =
      Field('cardLayout', _$cardLayout, opt: true, def: const NoteCardLayout());

  @override
  final MappableFields<NoteModel> fields = const {
    #id: _f$id,
    #templateId: _f$templateId,
    #defaultFields: _f$defaultFields,
    #fields: _f$fields,
    #editLayout: _f$editLayout,
    #cardLayout: _f$cardLayout,
  };

  static NoteModel _instantiate(DecodingData data) {
    return NoteModel(
        id: data.dec(_f$id),
        templateId: data.dec(_f$templateId),
        defaultFields: data.dec(_f$defaultFields),
        fields: data.dec(_f$fields),
        editLayout: data.dec(_f$editLayout),
        cardLayout: data.dec(_f$cardLayout));
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
  String toJson() {
    return NoteModelMapper.ensureInitialized()
        .encodeJson<NoteModel>(this as NoteModel);
  }

  Map<String, dynamic> toMap() {
    return NoteModelMapper.ensureInitialized()
        .encodeMap<NoteModel>(this as NoteModel);
  }

  NoteModelCopyWith<NoteModel, NoteModel, NoteModel> get copyWith =>
      _NoteModelCopyWithImpl(this as NoteModel, $identity, $identity);
  @override
  String toString() {
    return NoteModelMapper.ensureInitialized()
        .stringifyValue(this as NoteModel);
  }

  @override
  bool operator ==(Object other) {
    return NoteModelMapper.ensureInitialized()
        .equalsValue(this as NoteModel, other);
  }

  @override
  int get hashCode {
    return NoteModelMapper.ensureInitialized().hashValue(this as NoteModel);
  }
}

extension NoteModelValueCopy<$R, $Out> on ObjectCopyWith<$R, NoteModel, $Out> {
  NoteModelCopyWith<$R, NoteModel, $Out> get $asNoteModel =>
      $base.as((v, t, t2) => _NoteModelCopyWithImpl(v, t, t2));
}

abstract class NoteModelCopyWith<$R, $In extends NoteModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  NoteDefaultFieldsCopyWith<$R, NoteDefaultFields, NoteDefaultFields>
      get defaultFields;
  MapCopyWith<$R, String, NoteField<dynamic>,
      ObjectCopyWith<$R, NoteField<dynamic>, NoteField<dynamic>>> get fields;
  NoteEditLayoutCopyWith<$R, NoteEditLayout, NoteEditLayout> get editLayout;
  NoteCardLayoutCopyWith<$R, NoteCardLayout, NoteCardLayout> get cardLayout;
  $R call(
      {String? id,
      String? templateId,
      NoteDefaultFields? defaultFields,
      Map<String, NoteField<dynamic>>? fields,
      NoteEditLayout? editLayout,
      NoteCardLayout? cardLayout});
  NoteModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NoteModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NoteModel, $Out>
    implements NoteModelCopyWith<$R, NoteModel, $Out> {
  _NoteModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NoteModel> $mapper =
      NoteModelMapper.ensureInitialized();
  @override
  NoteDefaultFieldsCopyWith<$R, NoteDefaultFields, NoteDefaultFields>
      get defaultFields =>
          $value.defaultFields.copyWith.$chain((v) => call(defaultFields: v));
  @override
  MapCopyWith<$R, String, NoteField<dynamic>,
          ObjectCopyWith<$R, NoteField<dynamic>, NoteField<dynamic>>>
      get fields => MapCopyWith($value.fields,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(fields: v));
  @override
  NoteEditLayoutCopyWith<$R, NoteEditLayout, NoteEditLayout> get editLayout =>
      $value.editLayout.copyWith.$chain((v) => call(editLayout: v));
  @override
  NoteCardLayoutCopyWith<$R, NoteCardLayout, NoteCardLayout> get cardLayout =>
      $value.cardLayout.copyWith.$chain((v) => call(cardLayout: v));
  @override
  $R call(
          {String? id,
          String? templateId,
          NoteDefaultFields? defaultFields,
          Map<String, NoteField<dynamic>>? fields,
          NoteEditLayout? editLayout,
          NoteCardLayout? cardLayout}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (templateId != null) #templateId: templateId,
        if (defaultFields != null) #defaultFields: defaultFields,
        if (fields != null) #fields: fields,
        if (editLayout != null) #editLayout: editLayout,
        if (cardLayout != null) #cardLayout: cardLayout
      }));
  @override
  NoteModel $make(CopyWithData data) => NoteModel(
      id: data.get(#id, or: $value.id),
      templateId: data.get(#templateId, or: $value.templateId),
      defaultFields: data.get(#defaultFields, or: $value.defaultFields),
      fields: data.get(#fields, or: $value.fields),
      editLayout: data.get(#editLayout, or: $value.editLayout),
      cardLayout: data.get(#cardLayout, or: $value.cardLayout));

  @override
  NoteModelCopyWith<$R2, NoteModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NoteModelCopyWithImpl($value, $cast, t);
}

class NoteDefaultFieldsMapper extends ClassMapperBase<NoteDefaultFields> {
  NoteDefaultFieldsMapper._();

  static NoteDefaultFieldsMapper? _instance;
  static NoteDefaultFieldsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteDefaultFieldsMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'NoteDefaultFields';

  static String _$coverImage(NoteDefaultFields v) => v.coverImage;
  static const Field<NoteDefaultFields, String> _f$coverImage =
      Field('coverImage', _$coverImage, opt: true, def: '');
  static List<dynamic>? _$document(NoteDefaultFields v) => v.document;
  static const Field<NoteDefaultFields, List<dynamic>> _f$document =
      Field('document', _$document, opt: true, def: Document.empty);
  static bool _$hidden(NoteDefaultFields v) => v.hidden;
  static const Field<NoteDefaultFields, bool> _f$hidden =
      Field('hidden', _$hidden, opt: true, def: false);
  static bool _$archived(NoteDefaultFields v) => v.archived;
  static const Field<NoteDefaultFields, bool> _f$archived =
      Field('archived', _$archived, opt: true, def: false);
  static DateTime? _$lastUpdatedUtc(NoteDefaultFields v) => v.lastUpdatedUtc;
  static const Field<NoteDefaultFields, DateTime> _f$lastUpdatedUtc = Field(
      'lastUpdatedUtc', _$lastUpdatedUtc,
      opt: true, hook: _DateTimeHook());

  @override
  final MappableFields<NoteDefaultFields> fields = const {
    #coverImage: _f$coverImage,
    #document: _f$document,
    #hidden: _f$hidden,
    #archived: _f$archived,
    #lastUpdatedUtc: _f$lastUpdatedUtc,
  };

  static NoteDefaultFields _instantiate(DecodingData data) {
    return NoteDefaultFields(
        coverImage: data.dec(_f$coverImage),
        document: data.dec(_f$document),
        hidden: data.dec(_f$hidden),
        archived: data.dec(_f$archived),
        lastUpdatedUtc: data.dec(_f$lastUpdatedUtc));
  }

  @override
  final Function instantiate = _instantiate;

  static NoteDefaultFields fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NoteDefaultFields>(map);
  }

  static NoteDefaultFields fromJson(String json) {
    return ensureInitialized().decodeJson<NoteDefaultFields>(json);
  }
}

mixin NoteDefaultFieldsMappable {
  String toJson() {
    return NoteDefaultFieldsMapper.ensureInitialized()
        .encodeJson<NoteDefaultFields>(this as NoteDefaultFields);
  }

  Map<String, dynamic> toMap() {
    return NoteDefaultFieldsMapper.ensureInitialized()
        .encodeMap<NoteDefaultFields>(this as NoteDefaultFields);
  }

  NoteDefaultFieldsCopyWith<NoteDefaultFields, NoteDefaultFields,
          NoteDefaultFields>
      get copyWith => _NoteDefaultFieldsCopyWithImpl(
          this as NoteDefaultFields, $identity, $identity);
  @override
  String toString() {
    return NoteDefaultFieldsMapper.ensureInitialized()
        .stringifyValue(this as NoteDefaultFields);
  }

  @override
  bool operator ==(Object other) {
    return NoteDefaultFieldsMapper.ensureInitialized()
        .equalsValue(this as NoteDefaultFields, other);
  }

  @override
  int get hashCode {
    return NoteDefaultFieldsMapper.ensureInitialized()
        .hashValue(this as NoteDefaultFields);
  }
}

extension NoteDefaultFieldsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NoteDefaultFields, $Out> {
  NoteDefaultFieldsCopyWith<$R, NoteDefaultFields, $Out>
      get $asNoteDefaultFields =>
          $base.as((v, t, t2) => _NoteDefaultFieldsCopyWithImpl(v, t, t2));
}

abstract class NoteDefaultFieldsCopyWith<$R, $In extends NoteDefaultFields,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>? get document;
  $R call(
      {String? coverImage,
      List<dynamic>? document,
      bool? hidden,
      bool? archived,
      DateTime? lastUpdatedUtc});
  NoteDefaultFieldsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NoteDefaultFieldsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NoteDefaultFields, $Out>
    implements NoteDefaultFieldsCopyWith<$R, NoteDefaultFields, $Out> {
  _NoteDefaultFieldsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NoteDefaultFields> $mapper =
      NoteDefaultFieldsMapper.ensureInitialized();
  @override
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get document => $value.document != null
          ? ListCopyWith(
              $value.document!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(document: v))
          : null;
  @override
  $R call(
          {String? coverImage,
          Object? document = $none,
          bool? hidden,
          bool? archived,
          Object? lastUpdatedUtc = $none}) =>
      $apply(FieldCopyWithData({
        if (coverImage != null) #coverImage: coverImage,
        if (document != $none) #document: document,
        if (hidden != null) #hidden: hidden,
        if (archived != null) #archived: archived,
        if (lastUpdatedUtc != $none) #lastUpdatedUtc: lastUpdatedUtc
      }));
  @override
  NoteDefaultFields $make(CopyWithData data) => NoteDefaultFields(
      coverImage: data.get(#coverImage, or: $value.coverImage),
      document: data.get(#document, or: $value.document),
      hidden: data.get(#hidden, or: $value.hidden),
      archived: data.get(#archived, or: $value.archived),
      lastUpdatedUtc: data.get(#lastUpdatedUtc, or: $value.lastUpdatedUtc));

  @override
  NoteDefaultFieldsCopyWith<$R2, NoteDefaultFields, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NoteDefaultFieldsCopyWithImpl($value, $cast, t);
}
