// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'note_field.dart';

class NoteFieldMapper extends ClassMapperBase<NoteField> {
  NoteFieldMapper._();

  static NoteFieldMapper? _instance;
  static NoteFieldMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteFieldMapper._());
      MapperContainer.globals.useAll([_DateTimeMapper(), _DurationMapper()]);
      NoteDateTimeFieldMapper.ensureInitialized();
      NoteDurationFieldMapper.ensureInitialized();
      NoteImageFieldMapper.ensureInitialized();
      NoteLinkFieldMapper.ensureInitialized();
      NoteNumberFieldMapper.ensureInitialized();
      NoteSelectFieldMapper.ensureInitialized();
      NoteTextFieldMapper.ensureInitialized();
      NoteToggleFieldMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NoteField';
  @override
  Function get typeFactory => <T>(f) => f<NoteField<T>>();

  static String _$id(NoteField v) => v.id;
  static const Field<NoteField, String> _f$id = Field('id', _$id);
  static String _$name(NoteField v) => v.name;
  static const Field<NoteField, String> _f$name = Field('name', _$name);
  static dynamic _$value(NoteField v) => v.value;
  static dynamic _arg$value<T>(f) => f<T>();
  static const Field<NoteField, dynamic> _f$value =
      Field('value', _$value, arg: _arg$value);

  @override
  final MappableFields<NoteField> fields = const {
    #id: _f$id,
    #name: _f$name,
    #value: _f$value,
  };

  static NoteField<T> _instantiate<T>(DecodingData data) {
    throw MapperException.missingSubclass(
        'NoteField', 'fieldType', '${data.value['fieldType']}');
  }

  @override
  final Function instantiate = _instantiate;

  static NoteField<T> fromMap<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NoteField<T>>(map);
  }

  static NoteField<T> fromJson<T>(String json) {
    return ensureInitialized().decodeJson<NoteField<T>>(json);
  }
}

mixin NoteFieldMappable<T> {
  String toJson();
  Map<String, dynamic> toMap();
  NoteFieldCopyWith<NoteField<T>, NoteField<T>, NoteField<T>, T> get copyWith;
}

abstract class NoteFieldCopyWith<$R, $In extends NoteField<T>, $Out, T>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? name, T? value});
  NoteFieldCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

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
  static DateTime _$value(NoteDateTimeField v) => v.value;
  static const Field<NoteDateTimeField, DateTime> _f$value =
      Field('value', _$value);

  @override
  final MappableFields<NoteDateTimeField> fields = const {
    #id: _f$id,
    #name: _f$name,
    #value: _f$value,
  };

  @override
  final String discriminatorKey = 'fieldType';
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
    $Out> implements NoteFieldCopyWith<$R, $In, $Out, DateTime> {
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
  $R call({String? id, String? name, DateTime? value}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (value != null) #value: value
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

class NoteDurationFieldMapper extends SubClassMapperBase<NoteDurationField> {
  NoteDurationFieldMapper._();

  static NoteDurationFieldMapper? _instance;
  static NoteDurationFieldMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteDurationFieldMapper._());
      NoteFieldMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'NoteDurationField';

  static String _$id(NoteDurationField v) => v.id;
  static const Field<NoteDurationField, String> _f$id = Field('id', _$id);
  static String _$name(NoteDurationField v) => v.name;
  static const Field<NoteDurationField, String> _f$name = Field('name', _$name);
  static Duration _$value(NoteDurationField v) => v.value;
  static const Field<NoteDurationField, Duration> _f$value =
      Field('value', _$value, opt: true, def: Duration.zero);

  @override
  final MappableFields<NoteDurationField> fields = const {
    #id: _f$id,
    #name: _f$name,
    #value: _f$value,
  };

  @override
  final String discriminatorKey = 'fieldType';
  @override
  final dynamic discriminatorValue = 'duration';
  @override
  late final ClassMapperBase superMapper = NoteFieldMapper.ensureInitialized();

  @override
  DecodingContext inherit(DecodingContext context) {
    return context.inherit(args: () => []);
  }

  static NoteDurationField _instantiate(DecodingData data) {
    return NoteDurationField(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        value: data.dec(_f$value));
  }

  @override
  final Function instantiate = _instantiate;

  static NoteDurationField fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NoteDurationField>(map);
  }

  static NoteDurationField fromJson(String json) {
    return ensureInitialized().decodeJson<NoteDurationField>(json);
  }
}

mixin NoteDurationFieldMappable {
  String toJson() {
    return NoteDurationFieldMapper.ensureInitialized()
        .encodeJson<NoteDurationField>(this as NoteDurationField);
  }

  Map<String, dynamic> toMap() {
    return NoteDurationFieldMapper.ensureInitialized()
        .encodeMap<NoteDurationField>(this as NoteDurationField);
  }

  NoteDurationFieldCopyWith<NoteDurationField, NoteDurationField,
          NoteDurationField>
      get copyWith => _NoteDurationFieldCopyWithImpl(
          this as NoteDurationField, $identity, $identity);
  @override
  String toString() {
    return NoteDurationFieldMapper.ensureInitialized()
        .stringifyValue(this as NoteDurationField);
  }

  @override
  bool operator ==(Object other) {
    return NoteDurationFieldMapper.ensureInitialized()
        .equalsValue(this as NoteDurationField, other);
  }

  @override
  int get hashCode {
    return NoteDurationFieldMapper.ensureInitialized()
        .hashValue(this as NoteDurationField);
  }
}

extension NoteDurationFieldValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NoteDurationField, $Out> {
  NoteDurationFieldCopyWith<$R, NoteDurationField, $Out>
      get $asNoteDurationField =>
          $base.as((v, t, t2) => _NoteDurationFieldCopyWithImpl(v, t, t2));
}

abstract class NoteDurationFieldCopyWith<$R, $In extends NoteDurationField,
    $Out> implements NoteFieldCopyWith<$R, $In, $Out, Duration> {
  @override
  $R call({String? id, String? name, Duration? value});
  NoteDurationFieldCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NoteDurationFieldCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NoteDurationField, $Out>
    implements NoteDurationFieldCopyWith<$R, NoteDurationField, $Out> {
  _NoteDurationFieldCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NoteDurationField> $mapper =
      NoteDurationFieldMapper.ensureInitialized();
  @override
  $R call({String? id, String? name, Duration? value}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (value != null) #value: value
      }));
  @override
  NoteDurationField $make(CopyWithData data) => NoteDurationField(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      value: data.get(#value, or: $value.value));

  @override
  NoteDurationFieldCopyWith<$R2, NoteDurationField, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NoteDurationFieldCopyWithImpl($value, $cast, t);
}

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
  final String discriminatorKey = 'fieldType';
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
  final String discriminatorKey = 'fieldType';
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
  final String discriminatorKey = 'fieldType';
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

class NoteSelectFieldMapper extends SubClassMapperBase<NoteSelectField> {
  NoteSelectFieldMapper._();

  static NoteSelectFieldMapper? _instance;
  static NoteSelectFieldMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteSelectFieldMapper._());
      NoteFieldMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'NoteSelectField';

  static String _$id(NoteSelectField v) => v.id;
  static const Field<NoteSelectField, String> _f$id = Field('id', _$id);
  static String _$name(NoteSelectField v) => v.name;
  static const Field<NoteSelectField, String> _f$name = Field('name', _$name);
  static String _$value(NoteSelectField v) => v.value;
  static const Field<NoteSelectField, String> _f$value =
      Field('value', _$value, opt: true, def: '');
  static List<String> _$options(NoteSelectField v) => v.options;
  static const Field<NoteSelectField, List<String>> _f$options =
      Field('options', _$options, opt: true, def: const []);

  @override
  final MappableFields<NoteSelectField> fields = const {
    #id: _f$id,
    #name: _f$name,
    #value: _f$value,
    #options: _f$options,
  };

  @override
  final String discriminatorKey = 'fieldType';
  @override
  final dynamic discriminatorValue = 'select';
  @override
  late final ClassMapperBase superMapper = NoteFieldMapper.ensureInitialized();

  @override
  DecodingContext inherit(DecodingContext context) {
    return context.inherit(args: () => []);
  }

  static NoteSelectField _instantiate(DecodingData data) {
    return NoteSelectField(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        value: data.dec(_f$value),
        options: data.dec(_f$options));
  }

  @override
  final Function instantiate = _instantiate;

  static NoteSelectField fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NoteSelectField>(map);
  }

  static NoteSelectField fromJson(String json) {
    return ensureInitialized().decodeJson<NoteSelectField>(json);
  }
}

mixin NoteSelectFieldMappable {
  String toJson() {
    return NoteSelectFieldMapper.ensureInitialized()
        .encodeJson<NoteSelectField>(this as NoteSelectField);
  }

  Map<String, dynamic> toMap() {
    return NoteSelectFieldMapper.ensureInitialized()
        .encodeMap<NoteSelectField>(this as NoteSelectField);
  }

  NoteSelectFieldCopyWith<NoteSelectField, NoteSelectField, NoteSelectField>
      get copyWith => _NoteSelectFieldCopyWithImpl(
          this as NoteSelectField, $identity, $identity);
  @override
  String toString() {
    return NoteSelectFieldMapper.ensureInitialized()
        .stringifyValue(this as NoteSelectField);
  }

  @override
  bool operator ==(Object other) {
    return NoteSelectFieldMapper.ensureInitialized()
        .equalsValue(this as NoteSelectField, other);
  }

  @override
  int get hashCode {
    return NoteSelectFieldMapper.ensureInitialized()
        .hashValue(this as NoteSelectField);
  }
}

extension NoteSelectFieldValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NoteSelectField, $Out> {
  NoteSelectFieldCopyWith<$R, NoteSelectField, $Out> get $asNoteSelectField =>
      $base.as((v, t, t2) => _NoteSelectFieldCopyWithImpl(v, t, t2));
}

abstract class NoteSelectFieldCopyWith<$R, $In extends NoteSelectField, $Out>
    implements NoteFieldCopyWith<$R, $In, $Out, String> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get options;
  @override
  $R call({String? id, String? name, String? value, List<String>? options});
  NoteSelectFieldCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NoteSelectFieldCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NoteSelectField, $Out>
    implements NoteSelectFieldCopyWith<$R, NoteSelectField, $Out> {
  _NoteSelectFieldCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NoteSelectField> $mapper =
      NoteSelectFieldMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get options =>
      ListCopyWith($value.options, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(options: v));
  @override
  $R call({String? id, String? name, String? value, List<String>? options}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (value != null) #value: value,
        if (options != null) #options: options
      }));
  @override
  NoteSelectField $make(CopyWithData data) => NoteSelectField(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      value: data.get(#value, or: $value.value),
      options: data.get(#options, or: $value.options));

  @override
  NoteSelectFieldCopyWith<$R2, NoteSelectField, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NoteSelectFieldCopyWithImpl($value, $cast, t);
}

class NoteTextFieldTypeMapper extends EnumMapper<NoteTextFieldType> {
  NoteTextFieldTypeMapper._();

  static NoteTextFieldTypeMapper? _instance;
  static NoteTextFieldTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteTextFieldTypeMapper._());
    }
    return _instance!;
  }

  static NoteTextFieldType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  NoteTextFieldType decode(dynamic value) {
    switch (value) {
      case 'normal':
        return NoteTextFieldType.normal;
      case 'title':
        return NoteTextFieldType.title;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(NoteTextFieldType self) {
    switch (self) {
      case NoteTextFieldType.normal:
        return 'normal';
      case NoteTextFieldType.title:
        return 'title';
    }
  }
}

extension NoteTextFieldTypeMapperExtension on NoteTextFieldType {
  String toValue() {
    NoteTextFieldTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<NoteTextFieldType>(this) as String;
  }
}

class NoteTextFieldMapper extends SubClassMapperBase<NoteTextField> {
  NoteTextFieldMapper._();

  static NoteTextFieldMapper? _instance;
  static NoteTextFieldMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteTextFieldMapper._());
      NoteFieldMapper.ensureInitialized().addSubMapper(_instance!);
      NoteTextFieldTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NoteTextField';

  static String _$id(NoteTextField v) => v.id;
  static const Field<NoteTextField, String> _f$id = Field('id', _$id);
  static String _$name(NoteTextField v) => v.name;
  static const Field<NoteTextField, String> _f$name = Field('name', _$name);
  static String _$value(NoteTextField v) => v.value;
  static const Field<NoteTextField, String> _f$value =
      Field('value', _$value, opt: true, def: '');
  static NoteTextFieldType _$type(NoteTextField v) => v.type;
  static const Field<NoteTextField, NoteTextFieldType> _f$type =
      Field('type', _$type, opt: true, def: NoteTextFieldType.normal);

  @override
  final MappableFields<NoteTextField> fields = const {
    #id: _f$id,
    #name: _f$name,
    #value: _f$value,
    #type: _f$type,
  };

  @override
  final String discriminatorKey = 'fieldType';
  @override
  final dynamic discriminatorValue = 'text';
  @override
  late final ClassMapperBase superMapper = NoteFieldMapper.ensureInitialized();

  @override
  DecodingContext inherit(DecodingContext context) {
    return context.inherit(args: () => []);
  }

  static NoteTextField _instantiate(DecodingData data) {
    return NoteTextField(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        value: data.dec(_f$value),
        type: data.dec(_f$type));
  }

  @override
  final Function instantiate = _instantiate;

  static NoteTextField fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NoteTextField>(map);
  }

  static NoteTextField fromJson(String json) {
    return ensureInitialized().decodeJson<NoteTextField>(json);
  }
}

mixin NoteTextFieldMappable {
  String toJson() {
    return NoteTextFieldMapper.ensureInitialized()
        .encodeJson<NoteTextField>(this as NoteTextField);
  }

  Map<String, dynamic> toMap() {
    return NoteTextFieldMapper.ensureInitialized()
        .encodeMap<NoteTextField>(this as NoteTextField);
  }

  NoteTextFieldCopyWith<NoteTextField, NoteTextField, NoteTextField>
      get copyWith => _NoteTextFieldCopyWithImpl(
          this as NoteTextField, $identity, $identity);
  @override
  String toString() {
    return NoteTextFieldMapper.ensureInitialized()
        .stringifyValue(this as NoteTextField);
  }

  @override
  bool operator ==(Object other) {
    return NoteTextFieldMapper.ensureInitialized()
        .equalsValue(this as NoteTextField, other);
  }

  @override
  int get hashCode {
    return NoteTextFieldMapper.ensureInitialized()
        .hashValue(this as NoteTextField);
  }
}

extension NoteTextFieldValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NoteTextField, $Out> {
  NoteTextFieldCopyWith<$R, NoteTextField, $Out> get $asNoteTextField =>
      $base.as((v, t, t2) => _NoteTextFieldCopyWithImpl(v, t, t2));
}

abstract class NoteTextFieldCopyWith<$R, $In extends NoteTextField, $Out>
    implements NoteFieldCopyWith<$R, $In, $Out, String> {
  @override
  $R call({String? id, String? name, String? value, NoteTextFieldType? type});
  NoteTextFieldCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NoteTextFieldCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NoteTextField, $Out>
    implements NoteTextFieldCopyWith<$R, NoteTextField, $Out> {
  _NoteTextFieldCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NoteTextField> $mapper =
      NoteTextFieldMapper.ensureInitialized();
  @override
  $R call({String? id, String? name, String? value, NoteTextFieldType? type}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (value != null) #value: value,
        if (type != null) #type: type
      }));
  @override
  NoteTextField $make(CopyWithData data) => NoteTextField(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      value: data.get(#value, or: $value.value),
      type: data.get(#type, or: $value.type));

  @override
  NoteTextFieldCopyWith<$R2, NoteTextField, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NoteTextFieldCopyWithImpl($value, $cast, t);
}

class NoteToggleFieldMapper extends SubClassMapperBase<NoteToggleField> {
  NoteToggleFieldMapper._();

  static NoteToggleFieldMapper? _instance;
  static NoteToggleFieldMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteToggleFieldMapper._());
      NoteFieldMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'NoteToggleField';

  static String _$id(NoteToggleField v) => v.id;
  static const Field<NoteToggleField, String> _f$id = Field('id', _$id);
  static String _$name(NoteToggleField v) => v.name;
  static const Field<NoteToggleField, String> _f$name = Field('name', _$name);
  static bool _$value(NoteToggleField v) => v.value;
  static const Field<NoteToggleField, bool> _f$value =
      Field('value', _$value, opt: true, def: false);

  @override
  final MappableFields<NoteToggleField> fields = const {
    #id: _f$id,
    #name: _f$name,
    #value: _f$value,
  };

  @override
  final String discriminatorKey = 'fieldType';
  @override
  final dynamic discriminatorValue = 'toggle';
  @override
  late final ClassMapperBase superMapper = NoteFieldMapper.ensureInitialized();

  @override
  DecodingContext inherit(DecodingContext context) {
    return context.inherit(args: () => []);
  }

  static NoteToggleField _instantiate(DecodingData data) {
    return NoteToggleField(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        value: data.dec(_f$value));
  }

  @override
  final Function instantiate = _instantiate;

  static NoteToggleField fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NoteToggleField>(map);
  }

  static NoteToggleField fromJson(String json) {
    return ensureInitialized().decodeJson<NoteToggleField>(json);
  }
}

mixin NoteToggleFieldMappable {
  String toJson() {
    return NoteToggleFieldMapper.ensureInitialized()
        .encodeJson<NoteToggleField>(this as NoteToggleField);
  }

  Map<String, dynamic> toMap() {
    return NoteToggleFieldMapper.ensureInitialized()
        .encodeMap<NoteToggleField>(this as NoteToggleField);
  }

  NoteToggleFieldCopyWith<NoteToggleField, NoteToggleField, NoteToggleField>
      get copyWith => _NoteToggleFieldCopyWithImpl(
          this as NoteToggleField, $identity, $identity);
  @override
  String toString() {
    return NoteToggleFieldMapper.ensureInitialized()
        .stringifyValue(this as NoteToggleField);
  }

  @override
  bool operator ==(Object other) {
    return NoteToggleFieldMapper.ensureInitialized()
        .equalsValue(this as NoteToggleField, other);
  }

  @override
  int get hashCode {
    return NoteToggleFieldMapper.ensureInitialized()
        .hashValue(this as NoteToggleField);
  }
}

extension NoteToggleFieldValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NoteToggleField, $Out> {
  NoteToggleFieldCopyWith<$R, NoteToggleField, $Out> get $asNoteToggleField =>
      $base.as((v, t, t2) => _NoteToggleFieldCopyWithImpl(v, t, t2));
}

abstract class NoteToggleFieldCopyWith<$R, $In extends NoteToggleField, $Out>
    implements NoteFieldCopyWith<$R, $In, $Out, bool> {
  @override
  $R call({String? id, String? name, bool? value});
  NoteToggleFieldCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NoteToggleFieldCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NoteToggleField, $Out>
    implements NoteToggleFieldCopyWith<$R, NoteToggleField, $Out> {
  _NoteToggleFieldCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NoteToggleField> $mapper =
      NoteToggleFieldMapper.ensureInitialized();
  @override
  $R call({String? id, String? name, bool? value}) => $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (value != null) #value: value
      }));
  @override
  NoteToggleField $make(CopyWithData data) => NoteToggleField(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      value: data.get(#value, or: $value.value));

  @override
  NoteToggleFieldCopyWith<$R2, NoteToggleField, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NoteToggleFieldCopyWithImpl($value, $cast, t);
}
