// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'settings_model.dart';

class SettingsModelMapper extends ClassMapperBase<SettingsModel> {
  SettingsModelMapper._();

  static SettingsModelMapper? _instance;
  static SettingsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SettingsModelMapper._());
      StyleSettingsModelMapper.ensureInitialized();
      TagSettingsModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'SettingsModel';

  static StyleSettingsModel _$style(SettingsModel v) => v.style;
  static const Field<SettingsModel, StyleSettingsModel> _f$style =
      Field('style', _$style, opt: true, def: const StyleSettingsModel());
  static TagSettingsModel _$tag(SettingsModel v) => v.tag;
  static const Field<SettingsModel, TagSettingsModel> _f$tag =
      Field('tag', _$tag, opt: true, def: const TagSettingsModel());

  @override
  final Map<Symbol, Field<SettingsModel, dynamic>> fields = const {
    #style: _f$style,
    #tag: _f$tag,
  };

  static SettingsModel _instantiate(DecodingData data) {
    return SettingsModel(style: data.dec(_f$style), tag: data.dec(_f$tag));
  }

  @override
  final Function instantiate = _instantiate;

  static SettingsModel fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<SettingsModel>(map));
  }

  static SettingsModel fromJson(String json) {
    return _guard((c) => c.fromJson<SettingsModel>(json));
  }
}

mixin SettingsModelMappable {
  String toJson() {
    return SettingsModelMapper._guard((c) => c.toJson(this as SettingsModel));
  }

  Map<String, dynamic> toMap() {
    return SettingsModelMapper._guard((c) => c.toMap(this as SettingsModel));
  }

  SettingsModelCopyWith<SettingsModel, SettingsModel, SettingsModel>
      get copyWith => _SettingsModelCopyWithImpl(
          this as SettingsModel, $identity, $identity);
  @override
  String toString() {
    return SettingsModelMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            SettingsModelMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return SettingsModelMapper._guard((c) => c.hash(this));
  }
}

extension SettingsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, SettingsModel, $Out> {
  SettingsModelCopyWith<$R, SettingsModel, $Out> get $asSettingsModel =>
      $base.as((v, t, t2) => _SettingsModelCopyWithImpl(v, t, t2));
}

abstract class SettingsModelCopyWith<$R, $In extends SettingsModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  StyleSettingsModelCopyWith<$R, StyleSettingsModel, StyleSettingsModel>
      get style;
  TagSettingsModelCopyWith<$R, TagSettingsModel, TagSettingsModel> get tag;
  $R call({StyleSettingsModel? style, TagSettingsModel? tag});
  SettingsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SettingsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SettingsModel, $Out>
    implements SettingsModelCopyWith<$R, SettingsModel, $Out> {
  _SettingsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SettingsModel> $mapper =
      SettingsModelMapper.ensureInitialized();
  @override
  StyleSettingsModelCopyWith<$R, StyleSettingsModel, StyleSettingsModel>
      get style => $value.style.copyWith.$chain((v) => call(style: v));
  @override
  TagSettingsModelCopyWith<$R, TagSettingsModel, TagSettingsModel> get tag =>
      $value.tag.copyWith.$chain((v) => call(tag: v));
  @override
  $R call({StyleSettingsModel? style, TagSettingsModel? tag}) =>
      $apply(FieldCopyWithData(
          {if (style != null) #style: style, if (tag != null) #tag: tag}));
  @override
  SettingsModel $make(CopyWithData data) => SettingsModel(
      style: data.get(#style, or: $value.style),
      tag: data.get(#tag, or: $value.tag));

  @override
  SettingsModelCopyWith<$R2, SettingsModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SettingsModelCopyWithImpl($value, $cast, t);
}
