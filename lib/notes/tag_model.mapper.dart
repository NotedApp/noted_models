// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

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

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
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
    return TagModel(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        color: data.dec(_f$color));
  }

  @override
  final Function instantiate = _instantiate;

  static TagModel fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<TagModel>(map));
  }

  static TagModel fromJson(String json) {
    return _guard((c) => c.fromJson<TagModel>(json));
  }
}

mixin TagModelMappable {
  String toJson() {
    return TagModelMapper._guard((c) => c.toJson(this as TagModel));
  }

  Map<String, dynamic> toMap() {
    return TagModelMapper._guard((c) => c.toMap(this as TagModel));
  }

  TagModelCopyWith<TagModel, TagModel, TagModel> get copyWith =>
      _TagModelCopyWithImpl(this as TagModel, $identity, $identity);
  @override
  String toString() {
    return TagModelMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            TagModelMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return TagModelMapper._guard((c) => c.hash(this));
  }
}

extension TagModelValueCopy<$R, $Out> on ObjectCopyWith<$R, TagModel, $Out> {
  TagModelCopyWith<$R, TagModel, $Out> get $asTagModel =>
      $base.as((v, t, t2) => _TagModelCopyWithImpl(v, t, t2));
}

abstract class TagModelCopyWith<$R, $In extends TagModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? name, int? color});
  TagModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TagModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TagModel, $Out>
    implements TagModelCopyWith<$R, TagModel, $Out> {
  _TagModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TagModel> $mapper =
      TagModelMapper.ensureInitialized();
  @override
  $R call({String? id, String? name, int? color}) => $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (color != null) #color: color
      }));
  @override
  TagModel $make(CopyWithData data) => TagModel(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      color: data.get(#color, or: $value.color));

  @override
  TagModelCopyWith<$R2, TagModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TagModelCopyWithImpl($value, $cast, t);
}
