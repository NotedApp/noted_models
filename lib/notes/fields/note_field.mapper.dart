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
    throw MapperException.missingConstructor('NoteField');
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
