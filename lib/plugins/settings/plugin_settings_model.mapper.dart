// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'plugin_settings_model.dart';

class PluginSettingsModelMapper extends ClassMapperBase<PluginSettingsModel> {
  PluginSettingsModelMapper._();

  static PluginSettingsModelMapper? _instance;
  static PluginSettingsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PluginSettingsModelMapper._());
      CookbookSettingsModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PluginSettingsModel';

  static CookbookSettingsModel _$cookbook(PluginSettingsModel v) => v.cookbook;
  static const Field<PluginSettingsModel, CookbookSettingsModel> _f$cookbook =
      Field('cookbook', _$cookbook,
          opt: true, def: const CookbookSettingsModel());

  @override
  final Map<Symbol, Field<PluginSettingsModel, dynamic>> fields = const {
    #cookbook: _f$cookbook,
  };

  static PluginSettingsModel _instantiate(DecodingData data) {
    return PluginSettingsModel(cookbook: data.dec(_f$cookbook));
  }

  @override
  final Function instantiate = _instantiate;

  static PluginSettingsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PluginSettingsModel>(map);
  }

  static PluginSettingsModel fromJson(String json) {
    return ensureInitialized().decodeJson<PluginSettingsModel>(json);
  }
}

mixin PluginSettingsModelMappable {
  String toJson() {
    return PluginSettingsModelMapper.ensureInitialized()
        .encodeJson<PluginSettingsModel>(this as PluginSettingsModel);
  }

  Map<String, dynamic> toMap() {
    return PluginSettingsModelMapper.ensureInitialized()
        .encodeMap<PluginSettingsModel>(this as PluginSettingsModel);
  }

  PluginSettingsModelCopyWith<PluginSettingsModel, PluginSettingsModel,
          PluginSettingsModel>
      get copyWith => _PluginSettingsModelCopyWithImpl(
          this as PluginSettingsModel, $identity, $identity);
  @override
  String toString() {
    return PluginSettingsModelMapper.ensureInitialized()
        .stringifyValue(this as PluginSettingsModel);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            PluginSettingsModelMapper.ensureInitialized()
                .isValueEqual(this as PluginSettingsModel, other));
  }

  @override
  int get hashCode {
    return PluginSettingsModelMapper.ensureInitialized()
        .hashValue(this as PluginSettingsModel);
  }
}

extension PluginSettingsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PluginSettingsModel, $Out> {
  PluginSettingsModelCopyWith<$R, PluginSettingsModel, $Out>
      get $asPluginSettingsModel =>
          $base.as((v, t, t2) => _PluginSettingsModelCopyWithImpl(v, t, t2));
}

abstract class PluginSettingsModelCopyWith<$R, $In extends PluginSettingsModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  CookbookSettingsModelCopyWith<$R, CookbookSettingsModel,
      CookbookSettingsModel> get cookbook;
  $R call({CookbookSettingsModel? cookbook});
  PluginSettingsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PluginSettingsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PluginSettingsModel, $Out>
    implements PluginSettingsModelCopyWith<$R, PluginSettingsModel, $Out> {
  _PluginSettingsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PluginSettingsModel> $mapper =
      PluginSettingsModelMapper.ensureInitialized();
  @override
  CookbookSettingsModelCopyWith<$R, CookbookSettingsModel,
          CookbookSettingsModel>
      get cookbook => $value.cookbook.copyWith.$chain((v) => call(cookbook: v));
  @override
  $R call({CookbookSettingsModel? cookbook}) =>
      $apply(FieldCopyWithData({if (cookbook != null) #cookbook: cookbook}));
  @override
  PluginSettingsModel $make(CopyWithData data) =>
      PluginSettingsModel(cookbook: data.get(#cookbook, or: $value.cookbook));

  @override
  PluginSettingsModelCopyWith<$R2, PluginSettingsModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PluginSettingsModelCopyWithImpl($value, $cast, t);
}
