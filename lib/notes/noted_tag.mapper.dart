// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'noted_tag.dart';

class NotedTagMapper extends ClassMapperBase<NotedTag> {
  NotedTagMapper._();

  static NotedTagMapper? _instance;
  static NotedTagMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NotedTagMapper._());
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'NotedTag';

  static String _$id(NotedTag v) => v.id;
  static const Field<NotedTag, String> _f$id = Field('id', _$id);
  static String _$name(NotedTag v) => v.name;
  static const Field<NotedTag, String> _f$name = Field('name', _$name);
  static int _$color(NotedTag v) => v.color;
  static const Field<NotedTag, int> _f$color = Field('color', _$color);

  @override
  final Map<Symbol, Field<NotedTag, dynamic>> fields = const {
    #id: _f$id,
    #name: _f$name,
    #color: _f$color,
  };

  static NotedTag _instantiate(DecodingData data) {
    return NotedTag(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        color: data.dec(_f$color));
  }

  @override
  final Function instantiate = _instantiate;

  static NotedTag fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<NotedTag>(map));
  }

  static NotedTag fromJson(String json) {
    return _guard((c) => c.fromJson<NotedTag>(json));
  }
}

mixin NotedTagMappable {
  String toJson() {
    return NotedTagMapper._guard((c) => c.toJson(this as NotedTag));
  }

  Map<String, dynamic> toMap() {
    return NotedTagMapper._guard((c) => c.toMap(this as NotedTag));
  }

  NotedTagCopyWith<NotedTag, NotedTag, NotedTag> get copyWith =>
      _NotedTagCopyWithImpl(this as NotedTag, $identity, $identity);
  @override
  String toString() {
    return NotedTagMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            NotedTagMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return NotedTagMapper._guard((c) => c.hash(this));
  }
}

extension NotedTagValueCopy<$R, $Out> on ObjectCopyWith<$R, NotedTag, $Out> {
  NotedTagCopyWith<$R, NotedTag, $Out> get $asNotedTag =>
      $base.as((v, t, t2) => _NotedTagCopyWithImpl(v, t, t2));
}

abstract class NotedTagCopyWith<$R, $In extends NotedTag, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? name, int? color});
  NotedTagCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NotedTagCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NotedTag, $Out>
    implements NotedTagCopyWith<$R, NotedTag, $Out> {
  _NotedTagCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NotedTag> $mapper =
      NotedTagMapper.ensureInitialized();
  @override
  $R call({String? id, String? name, int? color}) => $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != null) #name: name,
        if (color != null) #color: color
      }));
  @override
  NotedTag $make(CopyWithData data) => NotedTag(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      color: data.get(#color, or: $value.color));

  @override
  NotedTagCopyWith<$R2, NotedTag, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NotedTagCopyWithImpl($value, $cast, t);
}
