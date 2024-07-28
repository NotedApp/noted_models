// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'note_image_field.dart';

class NoteImageFieldTypeMapper extends EnumMapper<NoteImageFieldType> {
  NoteImageFieldTypeMapper._();

  static NoteImageFieldTypeMapper? _instance;
  static NoteImageFieldTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteImageFieldTypeMapper._());
    }
    return _instance!;
  }

  static NoteImageFieldType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  NoteImageFieldType decode(dynamic value) {
    switch (value) {
      case 'remote':
        return NoteImageFieldType.remote;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(NoteImageFieldType self) {
    switch (self) {
      case NoteImageFieldType.remote:
        return 'remote';
    }
  }
}

extension NoteImageFieldTypeMapperExtension on NoteImageFieldType {
  String toValue() {
    NoteImageFieldTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<NoteImageFieldType>(this) as String;
  }
}

class NoteImageFieldMapper extends SubClassMapperBase<NoteImageField> {
  NoteImageFieldMapper._();

  static NoteImageFieldMapper? _instance;
  static NoteImageFieldMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteImageFieldMapper._());
      NoteFieldMapper.ensureInitialized().addSubMapper(_instance!);
      NoteImageFieldTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NoteImageField';

  static String _$id(NoteImageField v) => v.id;
  static const Field<NoteImageField, String> _f$id = Field('id', _$id);
  static String _$name(NoteImageField v) => v.name;
  static const Field<NoteImageField, String> _f$name = Field('name', _$name);
  static String _$value(NoteImageField v) => v.value;
  static const Field<NoteImageField, String> _f$value =
      Field('value', _$value, opt: true, def: '');
  static NoteImageFieldType _$type(NoteImageField v) => v.type;
  static const Field<NoteImageField, NoteImageFieldType> _f$type =
      Field('type', _$type, opt: true, def: NoteImageFieldType.remote);
  static bool _$useAsCoverImage(NoteImageField v) => v.useAsCoverImage;
  static const Field<NoteImageField, bool> _f$useAsCoverImage =
      Field('useAsCoverImage', _$useAsCoverImage, opt: true, def: false);

  @override
  final MappableFields<NoteImageField> fields = const {
    #id: _f$id,
    #name: _f$name,
    #value: _f$value,
    #type: _f$type,
    #useAsCoverImage: _f$useAsCoverImage,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'image';
  @override
  late final ClassMapperBase superMapper = NoteFieldMapper.ensureInitialized();

  @override
  DecodingContext inherit(DecodingContext context) {
    return context.inherit(args: () => []);
  }

  static NoteImageField _instantiate(DecodingData data) {
    return NoteImageField(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        value: data.dec(_f$value),
        type: data.dec(_f$type),
        useAsCoverImage: data.dec(_f$useAsCoverImage));
  }

  @override
  final Function instantiate = _instantiate;

  static NoteImageField fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NoteImageField>(map);
  }

  static NoteImageField fromJson(String json) {
    return ensureInitialized().decodeJson<NoteImageField>(json);
  }
}

mixin NoteImageFieldMappable {
  String toJson() {
    return NoteImageFieldMapper.ensureInitialized()
        .encodeJson<NoteImageField>(this as NoteImageField);
  }

  Map<String, dynamic> toMap() {
    return NoteImageFieldMapper.ensureInitialized()
        .encodeMap<NoteImageField>(this as NoteImageField);
  }

  NoteImageFieldCopyWith<NoteImageField, NoteImageField, NoteImageField>
      get copyWith => _NoteImageFieldCopyWithImpl(
          this as NoteImageField, $identity, $identity);
  @override
  String toString() {
    return NoteImageFieldMapper.ensureInitialized()
        .stringifyValue(this as NoteImageField);
  }

  @override
  bool operator ==(Object other) {
    return NoteImageFieldMapper.ensureInitialized()
        .equalsValue(this as NoteImageField, other);
  }

  @override
  int get hashCode {
    return NoteImageFieldMapper.ensureInitialized()
        .hashValue(this as NoteImageField);
  }
}

extension NoteImageFieldValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NoteImageField, $Out> {
  NoteImageFieldCopyWith<$R, NoteImageField, $Out> get $asNoteImageField =>
      $base.as((v, t, t2) => _NoteImageFieldCopyWithImpl(v, t, t2));
}

abstract class NoteImageFieldCopyWith<$R, $In extends NoteImageField, $Out>
    implements NoteFieldCopyWith<$R, $In, $Out, String> {
  @override
  $R call(
      {String? id,
      String? name,
      String? value,
      NoteImageFieldType? type,
      bool? useAsCoverImage});
  NoteImageFieldCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NoteImageFieldCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NoteImageField, $Out>
    implements NoteImageFieldCopyWith<$R, NoteImageField, $Out> {
  _NoteImageFieldCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NoteImageField> $mapper =
      NoteImageFieldMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          String? name,
          String? value,
          NoteImageFieldType? type,
          bool? useAsCoverImage}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (value != null) #value: value,
        if (type != null) #type: type,
        if (useAsCoverImage != null) #useAsCoverImage: useAsCoverImage
      }));
  @override
  NoteImageField $make(CopyWithData data) => NoteImageField(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      value: data.get(#value, or: $value.value),
      type: data.get(#type, or: $value.type),
      useAsCoverImage: data.get(#useAsCoverImage, or: $value.useAsCoverImage));

  @override
  NoteImageFieldCopyWith<$R2, NoteImageField, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NoteImageFieldCopyWithImpl($value, $cast, t);
}
