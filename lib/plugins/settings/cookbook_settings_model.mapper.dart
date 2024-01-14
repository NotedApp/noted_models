// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'cookbook_settings_model.dart';

class CookbookSettingsModelMapper
    extends ClassMapperBase<CookbookSettingsModel> {
  CookbookSettingsModelMapper._();

  static CookbookSettingsModelMapper? _instance;
  static CookbookSettingsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CookbookSettingsModelMapper._());
      TagModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CookbookSettingsModel';

  static bool _$showUrl(CookbookSettingsModel v) => v.showUrl;
  static const Field<CookbookSettingsModel, bool> _f$showUrl =
      Field('showUrl', _$showUrl, opt: true, def: true);
  static bool _$showPrepTime(CookbookSettingsModel v) => v.showPrepTime;
  static const Field<CookbookSettingsModel, bool> _f$showPrepTime =
      Field('showPrepTime', _$showPrepTime, opt: true, def: true);
  static bool _$showCookTime(CookbookSettingsModel v) => v.showCookTime;
  static const Field<CookbookSettingsModel, bool> _f$showCookTime =
      Field('showCookTime', _$showCookTime, opt: true, def: true);
  static bool _$showDifficulty(CookbookSettingsModel v) => v.showDifficulty;
  static const Field<CookbookSettingsModel, bool> _f$showDifficulty =
      Field('showDifficulty', _$showDifficulty, opt: true, def: true);
  static bool _$showTypes(CookbookSettingsModel v) => v.showTypes;
  static const Field<CookbookSettingsModel, bool> _f$showTypes =
      Field('showTypes', _$showTypes, opt: true, def: true);
  static bool _$showCuisines(CookbookSettingsModel v) => v.showCuisines;
  static const Field<CookbookSettingsModel, bool> _f$showCuisines =
      Field('showCuisines', _$showCuisines, opt: true, def: true);
  static Set<TagModel> _$typeTags(CookbookSettingsModel v) => v.typeTags;
  static const Field<CookbookSettingsModel, Set<TagModel>> _f$typeTags =
      Field('typeTags', _$typeTags, opt: true, def: const {});
  static Set<TagModel> _$cuisineTags(CookbookSettingsModel v) => v.cuisineTags;
  static const Field<CookbookSettingsModel, Set<TagModel>> _f$cuisineTags =
      Field('cuisineTags', _$cuisineTags, opt: true, def: const {});

  @override
  final MappableFields<CookbookSettingsModel> fields = const {
    #showUrl: _f$showUrl,
    #showPrepTime: _f$showPrepTime,
    #showCookTime: _f$showCookTime,
    #showDifficulty: _f$showDifficulty,
    #showTypes: _f$showTypes,
    #showCuisines: _f$showCuisines,
    #typeTags: _f$typeTags,
    #cuisineTags: _f$cuisineTags,
  };

  static CookbookSettingsModel _instantiate(DecodingData data) {
    return CookbookSettingsModel(
        showUrl: data.dec(_f$showUrl),
        showPrepTime: data.dec(_f$showPrepTime),
        showCookTime: data.dec(_f$showCookTime),
        showDifficulty: data.dec(_f$showDifficulty),
        showTypes: data.dec(_f$showTypes),
        showCuisines: data.dec(_f$showCuisines),
        typeTags: data.dec(_f$typeTags),
        cuisineTags: data.dec(_f$cuisineTags));
  }

  @override
  final Function instantiate = _instantiate;

  static CookbookSettingsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CookbookSettingsModel>(map);
  }

  static CookbookSettingsModel fromJson(String json) {
    return ensureInitialized().decodeJson<CookbookSettingsModel>(json);
  }
}

mixin CookbookSettingsModelMappable {
  String toJson() {
    return CookbookSettingsModelMapper.ensureInitialized()
        .encodeJson<CookbookSettingsModel>(this as CookbookSettingsModel);
  }

  Map<String, dynamic> toMap() {
    return CookbookSettingsModelMapper.ensureInitialized()
        .encodeMap<CookbookSettingsModel>(this as CookbookSettingsModel);
  }

  CookbookSettingsModelCopyWith<CookbookSettingsModel, CookbookSettingsModel,
          CookbookSettingsModel>
      get copyWith => _CookbookSettingsModelCopyWithImpl(
          this as CookbookSettingsModel, $identity, $identity);
  @override
  String toString() {
    return CookbookSettingsModelMapper.ensureInitialized()
        .stringifyValue(this as CookbookSettingsModel);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            CookbookSettingsModelMapper.ensureInitialized()
                .isValueEqual(this as CookbookSettingsModel, other));
  }

  @override
  int get hashCode {
    return CookbookSettingsModelMapper.ensureInitialized()
        .hashValue(this as CookbookSettingsModel);
  }
}

extension CookbookSettingsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CookbookSettingsModel, $Out> {
  CookbookSettingsModelCopyWith<$R, CookbookSettingsModel, $Out>
      get $asCookbookSettingsModel =>
          $base.as((v, t, t2) => _CookbookSettingsModelCopyWithImpl(v, t, t2));
}

abstract class CookbookSettingsModelCopyWith<
    $R,
    $In extends CookbookSettingsModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {bool? showUrl,
      bool? showPrepTime,
      bool? showCookTime,
      bool? showDifficulty,
      bool? showTypes,
      bool? showCuisines,
      Set<TagModel>? typeTags,
      Set<TagModel>? cuisineTags});
  CookbookSettingsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _CookbookSettingsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CookbookSettingsModel, $Out>
    implements CookbookSettingsModelCopyWith<$R, CookbookSettingsModel, $Out> {
  _CookbookSettingsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CookbookSettingsModel> $mapper =
      CookbookSettingsModelMapper.ensureInitialized();
  @override
  $R call(
          {bool? showUrl,
          bool? showPrepTime,
          bool? showCookTime,
          bool? showDifficulty,
          bool? showTypes,
          bool? showCuisines,
          Set<TagModel>? typeTags,
          Set<TagModel>? cuisineTags}) =>
      $apply(FieldCopyWithData({
        if (showUrl != null) #showUrl: showUrl,
        if (showPrepTime != null) #showPrepTime: showPrepTime,
        if (showCookTime != null) #showCookTime: showCookTime,
        if (showDifficulty != null) #showDifficulty: showDifficulty,
        if (showTypes != null) #showTypes: showTypes,
        if (showCuisines != null) #showCuisines: showCuisines,
        if (typeTags != null) #typeTags: typeTags,
        if (cuisineTags != null) #cuisineTags: cuisineTags
      }));
  @override
  CookbookSettingsModel $make(CopyWithData data) => CookbookSettingsModel(
      showUrl: data.get(#showUrl, or: $value.showUrl),
      showPrepTime: data.get(#showPrepTime, or: $value.showPrepTime),
      showCookTime: data.get(#showCookTime, or: $value.showCookTime),
      showDifficulty: data.get(#showDifficulty, or: $value.showDifficulty),
      showTypes: data.get(#showTypes, or: $value.showTypes),
      showCuisines: data.get(#showCuisines, or: $value.showCuisines),
      typeTags: data.get(#typeTags, or: $value.typeTags),
      cuisineTags: data.get(#cuisineTags, or: $value.cuisineTags));

  @override
  CookbookSettingsModelCopyWith<$R2, CookbookSettingsModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _CookbookSettingsModelCopyWithImpl($value, $cast, t);
}
