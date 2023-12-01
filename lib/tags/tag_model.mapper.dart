// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'tag_model.dart';

class TagModelMapper extends ClassMapperBase<TagModel> {
  TagModelMapper._();

  static TagModelMapper? _instance;
  static TagModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TagModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TagModel';

  static String _$id(TagModel v) => v.id;
  static const Field<TagModel, String> _f$id = Field('id', _$id);
  static String _$name(TagModel v) => v.name;
  static const Field<TagModel, String> _f$name = Field('name', _$name);
  static int _$color(TagModel v) => v.color;
  static const Field<TagModel, int> _f$color = Field('color', _$color);

  @override
  final Map<Symbol, Field<TagModel, dynamic>> fields = const {
    #id: _f$id,
    #name: _f$name,
    #color: _f$color,
  };

  static TagModel _instantiate(DecodingData data) {
    return TagModel(id: data.dec(_f$id), name: data.dec(_f$name), color: data.dec(_f$color));
  }

  @override
  final Function instantiate = _instantiate;

  static TagModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TagModel>(map);
  }

  static TagModel fromJson(String json) {
    return ensureInitialized().decodeJson<TagModel>(json);
  }
}

mixin TagModelMappable {
  String toJson() {
    return TagModelMapper.ensureInitialized().encodeJson<TagModel>(this as TagModel);
  }

  Map<String, dynamic> toMap() {
    return TagModelMapper.ensureInitialized().encodeMap<TagModel>(this as TagModel);
  }

  TagModelCopyWith<TagModel, TagModel, TagModel> get copyWith =>
      _TagModelCopyWithImpl(this as TagModel, $identity, $identity);
  @override
  String toString() {
    return TagModelMapper.ensureInitialized().stringifyValue(this as TagModel);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType && TagModelMapper.ensureInitialized().isValueEqual(this as TagModel, other));
  }

  @override
  int get hashCode {
    return TagModelMapper.ensureInitialized().hashValue(this as TagModel);
  }
}

extension TagModelValueCopy<$R, $Out> on ObjectCopyWith<$R, TagModel, $Out> {
  TagModelCopyWith<$R, TagModel, $Out> get $asTagModel => $base.as((v, t, t2) => _TagModelCopyWithImpl(v, t, t2));
}

abstract class TagModelCopyWith<$R, $In extends TagModel, $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? name, int? color});
  TagModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TagModelCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, TagModel, $Out>
    implements TagModelCopyWith<$R, TagModel, $Out> {
  _TagModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TagModel> $mapper = TagModelMapper.ensureInitialized();
  @override
  $R call({String? id, String? name, int? color}) => $apply(
      FieldCopyWithData({if (id != null) #id: id, if (name != null) #name: name, if (color != null) #color: color}));
  @override
  TagModel $make(CopyWithData data) => TagModel(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      color: data.get(#color, or: $value.color));

  @override
  TagModelCopyWith<$R2, TagModel, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _TagModelCopyWithImpl($value, $cast, t);
}
