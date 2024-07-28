// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'note_date_time_field.dart';

class NoteDateTimeFieldMapper extends SubClassMapperBase<NoteDateTimeField> {
  NoteDateTimeFieldMapper._();

  static NoteDateTimeFieldMapper? _instance;
  static NoteDateTimeFieldMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteDateTimeFieldMapper._());
      NoteFieldMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'NoteDateTimeField';

  static String _$id(NoteDateTimeField v) => v.id;
  static const Field<NoteDateTimeField, String> _f$id = Field('id', _$id);
  static String _$name(NoteDateTimeField v) => v.name;
  static const Field<NoteDateTimeField, String> _f$name = Field('name', _$name);
  static DateTime? _$value(NoteDateTimeField v) => v.value;
  static const Field<NoteDateTimeField, DateTime> _f$value =
      Field('value', _$value, opt: true);

  @override
  final MappableFields<NoteDateTimeField> fields = const {
    #id: _f$id,
    #name: _f$name,
    #value: _f$value,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'dateTime';
  @override
  late final ClassMapperBase superMapper = NoteFieldMapper.ensureInitialized();

  @override
  DecodingContext inherit(DecodingContext context) {
    return context.inherit(args: () => []);
  }

  static NoteDateTimeField _instantiate(DecodingData data) {
    return NoteDateTimeField(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        value: data.dec(_f$value));
  }

  @override
  final Function instantiate = _instantiate;

  static NoteDateTimeField fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NoteDateTimeField>(map);
  }

  static NoteDateTimeField fromJson(String json) {
    return ensureInitialized().decodeJson<NoteDateTimeField>(json);
  }
}

mixin NoteDateTimeFieldMappable {
  String toJson() {
    return NoteDateTimeFieldMapper.ensureInitialized()
        .encodeJson<NoteDateTimeField>(this as NoteDateTimeField);
  }

  Map<String, dynamic> toMap() {
    return NoteDateTimeFieldMapper.ensureInitialized()
        .encodeMap<NoteDateTimeField>(this as NoteDateTimeField);
  }

  NoteDateTimeFieldCopyWith<NoteDateTimeField, NoteDateTimeField,
          NoteDateTimeField>
      get copyWith => _NoteDateTimeFieldCopyWithImpl(
          this as NoteDateTimeField, $identity, $identity);
  @override
  String toString() {
    return NoteDateTimeFieldMapper.ensureInitialized()
        .stringifyValue(this as NoteDateTimeField);
  }

  @override
  bool operator ==(Object other) {
    return NoteDateTimeFieldMapper.ensureInitialized()
        .equalsValue(this as NoteDateTimeField, other);
  }

  @override
  int get hashCode {
    return NoteDateTimeFieldMapper.ensureInitialized()
        .hashValue(this as NoteDateTimeField);
  }
}

extension NoteDateTimeFieldValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NoteDateTimeField, $Out> {
  NoteDateTimeFieldCopyWith<$R, NoteDateTimeField, $Out>
      get $asNoteDateTimeField =>
          $base.as((v, t, t2) => _NoteDateTimeFieldCopyWithImpl(v, t, t2));
}

abstract class NoteDateTimeFieldCopyWith<$R, $In extends NoteDateTimeField,
    $Out> implements NoteFieldCopyWith<$R, $In, $Out, DateTime?> {
  @override
  $R call({String? id, String? name, DateTime? value});
  NoteDateTimeFieldCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NoteDateTimeFieldCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NoteDateTimeField, $Out>
    implements NoteDateTimeFieldCopyWith<$R, NoteDateTimeField, $Out> {
  _NoteDateTimeFieldCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NoteDateTimeField> $mapper =
      NoteDateTimeFieldMapper.ensureInitialized();
  @override
  $R call({String? id, String? name, Object? value = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (value != $none) #value: value
      }));
  @override
  NoteDateTimeField $make(CopyWithData data) => NoteDateTimeField(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      value: data.get(#value, or: $value.value));

  @override
  NoteDateTimeFieldCopyWith<$R2, NoteDateTimeField, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NoteDateTimeFieldCopyWithImpl($value, $cast, t);
}
