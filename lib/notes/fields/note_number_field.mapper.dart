// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'note_number_field.dart';

class NoteNumberFieldTypeMapper extends EnumMapper<NoteNumberFieldType> {
  NoteNumberFieldTypeMapper._();

  static NoteNumberFieldTypeMapper? _instance;
  static NoteNumberFieldTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteNumberFieldTypeMapper._());
    }
    return _instance!;
  }

  static NoteNumberFieldType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  NoteNumberFieldType decode(dynamic value) {
    switch (value) {
      case 'normal':
        return NoteNumberFieldType.normal;
      case 'currency':
        return NoteNumberFieldType.currency;
      case 'counter':
        return NoteNumberFieldType.counter;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(NoteNumberFieldType self) {
    switch (self) {
      case NoteNumberFieldType.normal:
        return 'normal';
      case NoteNumberFieldType.currency:
        return 'currency';
      case NoteNumberFieldType.counter:
        return 'counter';
    }
  }
}

extension NoteNumberFieldTypeMapperExtension on NoteNumberFieldType {
  String toValue() {
    NoteNumberFieldTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<NoteNumberFieldType>(this) as String;
  }
}

class NoteNumberFieldMapper extends SubClassMapperBase<NoteNumberField> {
  NoteNumberFieldMapper._();

  static NoteNumberFieldMapper? _instance;
  static NoteNumberFieldMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteNumberFieldMapper._());
      NoteFieldMapper.ensureInitialized().addSubMapper(_instance!);
      NoteNumberFieldTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NoteNumberField';

  static String _$id(NoteNumberField v) => v.id;
  static const Field<NoteNumberField, String> _f$id = Field('id', _$id);
  static String _$name(NoteNumberField v) => v.name;
  static const Field<NoteNumberField, String> _f$name = Field('name', _$name);
  static double _$value(NoteNumberField v) => v.value;
  static const Field<NoteNumberField, double> _f$value =
      Field('value', _$value, opt: true, def: 0);
  static NoteNumberFieldType _$type(NoteNumberField v) => v.type;
  static const Field<NoteNumberField, NoteNumberFieldType> _f$type =
      Field('type', _$type, opt: true, def: NoteNumberFieldType.normal);

  @override
  final MappableFields<NoteNumberField> fields = const {
    #id: _f$id,
    #name: _f$name,
    #value: _f$value,
    #type: _f$type,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'number';
  @override
  late final ClassMapperBase superMapper = NoteFieldMapper.ensureInitialized();

  @override
  DecodingContext inherit(DecodingContext context) {
    return context.inherit(args: () => []);
  }

  static NoteNumberField _instantiate(DecodingData data) {
    return NoteNumberField(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        value: data.dec(_f$value),
        type: data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static NoteNumberField fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NoteNumberField>(map);
  }

  static NoteNumberField fromJson(String json) {
    return ensureInitialized().decodeJson<NoteNumberField>(json);
  }
}

mixin NoteNumberFieldMappable {
  String toJson() {
    return NoteNumberFieldMapper.ensureInitialized()
        .encodeJson<NoteNumberField>(this as NoteNumberField);
  }

  Map<String, dynamic> toMap() {
    return NoteNumberFieldMapper.ensureInitialized()
        .encodeMap<NoteNumberField>(this as NoteNumberField);
  }

  NoteNumberFieldCopyWith<NoteNumberField, NoteNumberField, NoteNumberField>
      get copyWith => _NoteNumberFieldCopyWithImpl(
          this as NoteNumberField, $identity, $identity);
  @override
  String toString() {
    return NoteNumberFieldMapper.ensureInitialized()
        .stringifyValue(this as NoteNumberField);
  }

  @override
  bool operator ==(Object other) {
    return NoteNumberFieldMapper.ensureInitialized()
        .equalsValue(this as NoteNumberField, other);
  }

  @override
  int get hashCode {
    return NoteNumberFieldMapper.ensureInitialized()
        .hashValue(this as NoteNumberField);
  }
}

extension NoteNumberFieldValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NoteNumberField, $Out> {
  NoteNumberFieldCopyWith<$R, NoteNumberField, $Out> get $asNoteNumberField =>
      $base.as((v, t, t2) => _NoteNumberFieldCopyWithImpl(v, t, t2));
}

abstract class NoteNumberFieldCopyWith<$R, $In extends NoteNumberField, $Out>
    implements NoteFieldCopyWith<$R, $In, $Out, double> {
  @override
  $R call({String? id, String? name, double? value, NoteNumberFieldType? type});
  NoteNumberFieldCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NoteNumberFieldCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NoteNumberField, $Out>
    implements NoteNumberFieldCopyWith<$R, NoteNumberField, $Out> {
  _NoteNumberFieldCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NoteNumberField> $mapper =
      NoteNumberFieldMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          String? name,
          double? value,
          NoteNumberFieldType? type}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (value != null) #value: value,
        if (type != null) #type: type
      }));
  @override
  NoteNumberField $make(CopyWithData data) => NoteNumberField(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      value: data.get(#value, or: $value.value),
      type: data.get(#type, or: $value.type));

  @override
  NoteNumberFieldCopyWith<$R2, NoteNumberField, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NoteNumberFieldCopyWithImpl($value, $cast, t);
}
