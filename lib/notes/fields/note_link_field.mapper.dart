// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'note_link_field.dart';

class NoteLinkFieldMapper extends SubClassMapperBase<NoteLinkField> {
  NoteLinkFieldMapper._();

  static NoteLinkFieldMapper? _instance;
  static NoteLinkFieldMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteLinkFieldMapper._());
      NoteFieldMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'NoteLinkField';

  static String _$id(NoteLinkField v) => v.id;
  static const Field<NoteLinkField, String> _f$id = Field('id', _$id);
  static String _$name(NoteLinkField v) => v.name;
  static const Field<NoteLinkField, String> _f$name = Field('name', _$name);
  static String _$value(NoteLinkField v) => v.value;
  static const Field<NoteLinkField, String> _f$value =
      Field('value', _$value, opt: true, def: '');
  static bool _$useAsCoverImage(NoteLinkField v) => v.useAsCoverImage;
  static const Field<NoteLinkField, bool> _f$useAsCoverImage =
      Field('useAsCoverImage', _$useAsCoverImage, opt: true, def: false);

  @override
  final MappableFields<NoteLinkField> fields = const {
    #id: _f$id,
    #name: _f$name,
    #value: _f$value,
    #useAsCoverImage: _f$useAsCoverImage,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'link';
  @override
  late final ClassMapperBase superMapper = NoteFieldMapper.ensureInitialized();

  @override
  DecodingContext inherit(DecodingContext context) {
    return context.inherit(args: () => []);
  }

  static NoteLinkField _instantiate(DecodingData data) {
    return NoteLinkField(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        value: data.dec(_f$value),
        useAsCoverImage: data.dec(_f$useAsCoverImage));
  }

  @override
  final Function instantiate = _instantiate;

  static NoteLinkField fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NoteLinkField>(map);
  }

  static NoteLinkField fromJson(String json) {
    return ensureInitialized().decodeJson<NoteLinkField>(json);
  }
}

mixin NoteLinkFieldMappable {
  String toJson() {
    return NoteLinkFieldMapper.ensureInitialized()
        .encodeJson<NoteLinkField>(this as NoteLinkField);
  }

  Map<String, dynamic> toMap() {
    return NoteLinkFieldMapper.ensureInitialized()
        .encodeMap<NoteLinkField>(this as NoteLinkField);
  }

  NoteLinkFieldCopyWith<NoteLinkField, NoteLinkField, NoteLinkField>
      get copyWith => _NoteLinkFieldCopyWithImpl(
          this as NoteLinkField, $identity, $identity);
  @override
  String toString() {
    return NoteLinkFieldMapper.ensureInitialized()
        .stringifyValue(this as NoteLinkField);
  }

  @override
  bool operator ==(Object other) {
    return NoteLinkFieldMapper.ensureInitialized()
        .equalsValue(this as NoteLinkField, other);
  }

  @override
  int get hashCode {
    return NoteLinkFieldMapper.ensureInitialized()
        .hashValue(this as NoteLinkField);
  }
}

extension NoteLinkFieldValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NoteLinkField, $Out> {
  NoteLinkFieldCopyWith<$R, NoteLinkField, $Out> get $asNoteLinkField =>
      $base.as((v, t, t2) => _NoteLinkFieldCopyWithImpl(v, t, t2));
}

abstract class NoteLinkFieldCopyWith<$R, $In extends NoteLinkField, $Out>
    implements NoteFieldCopyWith<$R, $In, $Out, String> {
  @override
  $R call({String? id, String? name, String? value, bool? useAsCoverImage});
  NoteLinkFieldCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NoteLinkFieldCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NoteLinkField, $Out>
    implements NoteLinkFieldCopyWith<$R, NoteLinkField, $Out> {
  _NoteLinkFieldCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NoteLinkField> $mapper =
      NoteLinkFieldMapper.ensureInitialized();
  @override
  $R call({String? id, String? name, String? value, bool? useAsCoverImage}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (value != null) #value: value,
        if (useAsCoverImage != null) #useAsCoverImage: useAsCoverImage
      }));
  @override
  NoteLinkField $make(CopyWithData data) => NoteLinkField(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      value: data.get(#value, or: $value.value),
      useAsCoverImage: data.get(#useAsCoverImage, or: $value.useAsCoverImage));

  @override
  NoteLinkFieldCopyWith<$R2, NoteLinkField, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NoteLinkFieldCopyWithImpl($value, $cast, t);
}
