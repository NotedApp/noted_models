// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'style_settings_model.dart';

class StyleSettingsModelMapper extends ClassMapperBase<StyleSettingsModel> {
  StyleSettingsModelMapper._();

  static StyleSettingsModelMapper? _instance;
  static StyleSettingsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = StyleSettingsModelMapper._());
      ColorSchemeModelNameMapper.ensureInitialized();
      ColorSchemeModelMapper.ensureInitialized();
      TextThemeModelNameMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'StyleSettingsModel';

  static ColorSchemeModelName _$colorSchemeName(StyleSettingsModel v) =>
      v.colorSchemeName;
  static const Field<StyleSettingsModel, ColorSchemeModelName>
      _f$colorSchemeName = Field('colorSchemeName', _$colorSchemeName,
          opt: true, def: ColorSchemeModelName.blue);
  static ColorSchemeModel _$customColorScheme(StyleSettingsModel v) =>
      v.customColorScheme;
  static const Field<StyleSettingsModel, ColorSchemeModel>
      _f$customColorScheme = Field('customColorScheme', _$customColorScheme,
          opt: true, def: ColorSchemeModel.blue);
  static TextThemeModelName _$textThemeName(StyleSettingsModel v) =>
      v.textThemeName;
  static const Field<StyleSettingsModel, TextThemeModelName> _f$textThemeName =
      Field('textThemeName', _$textThemeName,
          opt: true, def: TextThemeModelName.poppins);
  static List<int> _$textColors(StyleSettingsModel v) => v.textColors;
  static const Field<StyleSettingsModel, List<int>> _f$textColors =
      Field('textColors', _$textColors, opt: true, def: _textColors);
  static List<int> _$highlightColors(StyleSettingsModel v) => v.highlightColors;
  static const Field<StyleSettingsModel, List<int>> _f$highlightColors = Field(
      'highlightColors', _$highlightColors,
      opt: true, def: _highlightColors);

  @override
  final MappableFields<StyleSettingsModel> fields = const {
    #colorSchemeName: _f$colorSchemeName,
    #customColorScheme: _f$customColorScheme,
    #textThemeName: _f$textThemeName,
    #textColors: _f$textColors,
    #highlightColors: _f$highlightColors,
  };

  static StyleSettingsModel _instantiate(DecodingData data) {
    return StyleSettingsModel(
        colorSchemeName: data.dec(_f$colorSchemeName),
        customColorScheme: data.dec(_f$customColorScheme),
        textThemeName: data.dec(_f$textThemeName),
        textColors: data.dec(_f$textColors),
        highlightColors: data.dec(_f$highlightColors));
  }

  @override
  final Function instantiate = _instantiate;

  static StyleSettingsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<StyleSettingsModel>(map);
  }

  static StyleSettingsModel fromJson(String json) {
    return ensureInitialized().decodeJson<StyleSettingsModel>(json);
  }
}

mixin StyleSettingsModelMappable {
  String toJson() {
    return StyleSettingsModelMapper.ensureInitialized()
        .encodeJson<StyleSettingsModel>(this as StyleSettingsModel);
  }

  Map<String, dynamic> toMap() {
    return StyleSettingsModelMapper.ensureInitialized()
        .encodeMap<StyleSettingsModel>(this as StyleSettingsModel);
  }

  StyleSettingsModelCopyWith<StyleSettingsModel, StyleSettingsModel,
          StyleSettingsModel>
      get copyWith => _StyleSettingsModelCopyWithImpl(
          this as StyleSettingsModel, $identity, $identity);
  @override
  String toString() {
    return StyleSettingsModelMapper.ensureInitialized()
        .stringifyValue(this as StyleSettingsModel);
  }

  @override
  bool operator ==(Object other) {
    return StyleSettingsModelMapper.ensureInitialized()
        .equalsValue(this as StyleSettingsModel, other);
  }

  @override
  int get hashCode {
    return StyleSettingsModelMapper.ensureInitialized()
        .hashValue(this as StyleSettingsModel);
  }
}

extension StyleSettingsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, StyleSettingsModel, $Out> {
  StyleSettingsModelCopyWith<$R, StyleSettingsModel, $Out>
      get $asStyleSettingsModel =>
          $base.as((v, t, t2) => _StyleSettingsModelCopyWithImpl(v, t, t2));
}

abstract class StyleSettingsModelCopyWith<$R, $In extends StyleSettingsModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ColorSchemeModelCopyWith<$R, ColorSchemeModel, ColorSchemeModel>
      get customColorScheme;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get textColors;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get highlightColors;
  $R call(
      {ColorSchemeModelName? colorSchemeName,
      ColorSchemeModel? customColorScheme,
      TextThemeModelName? textThemeName,
      List<int>? textColors,
      List<int>? highlightColors});
  StyleSettingsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _StyleSettingsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, StyleSettingsModel, $Out>
    implements StyleSettingsModelCopyWith<$R, StyleSettingsModel, $Out> {
  _StyleSettingsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<StyleSettingsModel> $mapper =
      StyleSettingsModelMapper.ensureInitialized();
  @override
  ColorSchemeModelCopyWith<$R, ColorSchemeModel, ColorSchemeModel>
      get customColorScheme => $value.customColorScheme.copyWith
          .$chain((v) => call(customColorScheme: v));
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get textColors =>
      ListCopyWith($value.textColors, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(textColors: v));
  @override
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get highlightColors =>
      ListCopyWith(
          $value.highlightColors,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(highlightColors: v));
  @override
  $R call(
          {ColorSchemeModelName? colorSchemeName,
          ColorSchemeModel? customColorScheme,
          TextThemeModelName? textThemeName,
          List<int>? textColors,
          List<int>? highlightColors}) =>
      $apply(FieldCopyWithData({
        if (colorSchemeName != null) #colorSchemeName: colorSchemeName,
        if (customColorScheme != null) #customColorScheme: customColorScheme,
        if (textThemeName != null) #textThemeName: textThemeName,
        if (textColors != null) #textColors: textColors,
        if (highlightColors != null) #highlightColors: highlightColors
      }));
  @override
  StyleSettingsModel $make(CopyWithData data) => StyleSettingsModel(
      colorSchemeName: data.get(#colorSchemeName, or: $value.colorSchemeName),
      customColorScheme:
          data.get(#customColorScheme, or: $value.customColorScheme),
      textThemeName: data.get(#textThemeName, or: $value.textThemeName),
      textColors: data.get(#textColors, or: $value.textColors),
      highlightColors: data.get(#highlightColors, or: $value.highlightColors));

  @override
  StyleSettingsModelCopyWith<$R2, StyleSettingsModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _StyleSettingsModelCopyWithImpl($value, $cast, t);
}
