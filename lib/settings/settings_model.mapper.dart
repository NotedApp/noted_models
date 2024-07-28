// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

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

  @override
  final String id = 'SettingsModel';

  static StyleSettingsModel _$style(SettingsModel v) => v.style;
  static const Field<SettingsModel, StyleSettingsModel> _f$style =
      Field('style', _$style, opt: true, def: const StyleSettingsModel());
  static TagSettingsModel _$tags(SettingsModel v) => v.tags;
  static const Field<SettingsModel, TagSettingsModel> _f$tags =
      Field('tags', _$tags, opt: true, def: const TagSettingsModel());

  @override
  final MappableFields<SettingsModel> fields = const {
    #style: _f$style,
    #tags: _f$tags,
  };

  static SettingsModel _instantiate(DecodingData data) {
    return SettingsModel(style: data.dec(_f$style), tags: data.dec(_f$tags));
  }

  @override
  final Function instantiate = _instantiate;

  static SettingsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SettingsModel>(map);
  }

  static SettingsModel fromJson(String json) {
    return ensureInitialized().decodeJson<SettingsModel>(json);
  }
}

mixin SettingsModelMappable {
  String toJson() {
    return SettingsModelMapper.ensureInitialized()
        .encodeJson<SettingsModel>(this as SettingsModel);
  }

  Map<String, dynamic> toMap() {
    return SettingsModelMapper.ensureInitialized()
        .encodeMap<SettingsModel>(this as SettingsModel);
  }

  SettingsModelCopyWith<SettingsModel, SettingsModel, SettingsModel>
      get copyWith => _SettingsModelCopyWithImpl(
          this as SettingsModel, $identity, $identity);
  @override
  String toString() {
    return SettingsModelMapper.ensureInitialized()
        .stringifyValue(this as SettingsModel);
  }

  @override
  bool operator ==(Object other) {
    return SettingsModelMapper.ensureInitialized()
        .equalsValue(this as SettingsModel, other);
  }

  @override
  int get hashCode {
    return SettingsModelMapper.ensureInitialized()
        .hashValue(this as SettingsModel);
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
  TagSettingsModelCopyWith<$R, TagSettingsModel, TagSettingsModel> get tags;
  $R call({StyleSettingsModel? style, TagSettingsModel? tags});
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
  TagSettingsModelCopyWith<$R, TagSettingsModel, TagSettingsModel> get tags =>
      $value.tags.copyWith.$chain((v) => call(tags: v));
  @override
  $R call({StyleSettingsModel? style, TagSettingsModel? tags}) =>
      $apply(FieldCopyWithData(
          {if (style != null) #style: style, if (tags != null) #tags: tags}));
  @override
  SettingsModel $make(CopyWithData data) => SettingsModel(
      style: data.get(#style, or: $value.style),
      tags: data.get(#tags, or: $value.tags));

  @override
  SettingsModelCopyWith<$R2, SettingsModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SettingsModelCopyWithImpl($value, $cast, t);
}
