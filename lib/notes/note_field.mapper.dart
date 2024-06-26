// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'note_field.dart';

class NoteFieldMapper extends EnumMapper<NoteField> {
  NoteFieldMapper._();

  static NoteFieldMapper? _instance;
  static NoteFieldMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteFieldMapper._());
    }
    return _instance!;
  }

  static NoteField fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  NoteField decode(dynamic value) {
    switch (value) {
      case 'title':
        return NoteField.title;
      case 'tagIds':
        return NoteField.tagIds;
      case 'hidden':
        return NoteField.hidden;
      case 'archived':
        return NoteField.archived;
      case 'lastUpdatedUtc':
        return NoteField.lastUpdatedUtc;
      case 'document':
        return NoteField.document;
      case 'link':
        return NoteField.link;
      case 'imageUrl':
        return NoteField.imageUrl;
      case 'location':
        return NoteField.location;
      case 'cookbookPrepTime':
        return NoteField.cookbookPrepTime;
      case 'cookbookCookTime':
        return NoteField.cookbookCookTime;
      case 'cookbookDifficulty':
        return NoteField.cookbookDifficulty;
      case 'climbingRating':
        return NoteField.climbingRating;
      case 'climbingSetting':
        return NoteField.climbingSetting;
      case 'climbingType':
        return NoteField.climbingType;
      case 'climbingAttemptsUtc':
        return NoteField.climbingAttemptsUtc;
      case 'climbingTopsUtc':
        return NoteField.climbingTopsUtc;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(NoteField self) {
    switch (self) {
      case NoteField.title:
        return 'title';
      case NoteField.tagIds:
        return 'tagIds';
      case NoteField.hidden:
        return 'hidden';
      case NoteField.archived:
        return 'archived';
      case NoteField.lastUpdatedUtc:
        return 'lastUpdatedUtc';
      case NoteField.document:
        return 'document';
      case NoteField.link:
        return 'link';
      case NoteField.imageUrl:
        return 'imageUrl';
      case NoteField.location:
        return 'location';
      case NoteField.cookbookPrepTime:
        return 'cookbookPrepTime';
      case NoteField.cookbookCookTime:
        return 'cookbookCookTime';
      case NoteField.cookbookDifficulty:
        return 'cookbookDifficulty';
      case NoteField.climbingRating:
        return 'climbingRating';
      case NoteField.climbingSetting:
        return 'climbingSetting';
      case NoteField.climbingType:
        return 'climbingType';
      case NoteField.climbingAttemptsUtc:
        return 'climbingAttemptsUtc';
      case NoteField.climbingTopsUtc:
        return 'climbingTopsUtc';
    }
  }
}

extension NoteFieldMapperExtension on NoteField {
  String toValue() {
    NoteFieldMapper.ensureInitialized();
    return MapperContainer.globals.toValue<NoteField>(this) as String;
  }
}

class NoteFieldValueMapper extends ClassMapperBase<NoteFieldValue> {
  NoteFieldValueMapper._();

  static NoteFieldValueMapper? _instance;
  static NoteFieldValueMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteFieldValueMapper._());
      NoteFieldMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NoteFieldValue';
  @override
  Function get typeFactory => <T>(f) => f<NoteFieldValue<T>>();

  static NoteField<dynamic> _$field(NoteFieldValue v) => v.field;
  static dynamic _arg$field<T>(f) => f<NoteField<T>>();
  static const Field<NoteFieldValue, NoteField<dynamic>> _f$field =
      Field('field', _$field, arg: _arg$field);
  static dynamic _$value(NoteFieldValue v) => v.value;
  static dynamic _arg$value<T>(f) => f<T>();
  static const Field<NoteFieldValue, dynamic> _f$value =
      Field('value', _$value, arg: _arg$value);

  @override
  final MappableFields<NoteFieldValue> fields = const {
    #field: _f$field,
    #value: _f$value,
  };

  static NoteFieldValue<T> _instantiate<T>(DecodingData data) {
    return NoteFieldValue(data.dec(_f$field), data.dec(_f$value));
  }

  @override
  final Function instantiate = _instantiate;

  static NoteFieldValue<T> fromMap<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NoteFieldValue<T>>(map);
  }

  static NoteFieldValue<T> fromJson<T>(String json) {
    return ensureInitialized().decodeJson<NoteFieldValue<T>>(json);
  }
}

mixin NoteFieldValueMappable<T> {
  String toJson() {
    return NoteFieldValueMapper.ensureInitialized()
        .encodeJson<NoteFieldValue<T>>(this as NoteFieldValue<T>);
  }

  Map<String, dynamic> toMap() {
    return NoteFieldValueMapper.ensureInitialized()
        .encodeMap<NoteFieldValue<T>>(this as NoteFieldValue<T>);
  }

  NoteFieldValueCopyWith<NoteFieldValue<T>, NoteFieldValue<T>,
          NoteFieldValue<T>, T>
      get copyWith => _NoteFieldValueCopyWithImpl(
          this as NoteFieldValue<T>, $identity, $identity);
  @override
  String toString() {
    return NoteFieldValueMapper.ensureInitialized()
        .stringifyValue(this as NoteFieldValue<T>);
  }

  @override
  bool operator ==(Object other) {
    return NoteFieldValueMapper.ensureInitialized()
        .equalsValue(this as NoteFieldValue<T>, other);
  }

  @override
  int get hashCode {
    return NoteFieldValueMapper.ensureInitialized()
        .hashValue(this as NoteFieldValue<T>);
  }
}

extension NoteFieldValueValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, NoteFieldValue<T>, $Out> {
  NoteFieldValueCopyWith<$R, NoteFieldValue<T>, $Out, T>
      get $asNoteFieldValue =>
          $base.as((v, t, t2) => _NoteFieldValueCopyWithImpl(v, t, t2));
}

abstract class NoteFieldValueCopyWith<$R, $In extends NoteFieldValue<T>, $Out,
    T> implements ClassCopyWith<$R, $In, $Out> {
  $R call({NoteField<T>? field, T? value});
  NoteFieldValueCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NoteFieldValueCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, NoteFieldValue<T>, $Out>
    implements NoteFieldValueCopyWith<$R, NoteFieldValue<T>, $Out, T> {
  _NoteFieldValueCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NoteFieldValue> $mapper =
      NoteFieldValueMapper.ensureInitialized();
  @override
  $R call({NoteField<T>? field, T? value}) => $apply(FieldCopyWithData(
      {if (field != null) #field: field, if (value != null) #value: value}));
  @override
  NoteFieldValue<T> $make(CopyWithData data) => NoteFieldValue(
      data.get(#field, or: $value.field), data.get(#value, or: $value.value));

  @override
  NoteFieldValueCopyWith<$R2, NoteFieldValue<T>, $Out2, T> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NoteFieldValueCopyWithImpl($value, $cast, t);
}
