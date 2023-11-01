// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of '../style/style_settings_model.dart';

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

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
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
  final Map<Symbol, Field<StyleSettingsModel, dynamic>> fields = const {
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
    return _guard((c) => c.fromMap<StyleSettingsModel>(map));
  }

  static StyleSettingsModel fromJson(String json) {
    return _guard((c) => c.fromJson<StyleSettingsModel>(json));
  }
}

mixin StyleSettingsModelMappable {
  String toJson() {
    return StyleSettingsModelMapper._guard(
        (c) => c.toJson(this as StyleSettingsModel));
  }

  Map<String, dynamic> toMap() {
    return StyleSettingsModelMapper._guard(
        (c) => c.toMap(this as StyleSettingsModel));
  }

  StyleSettingsModelCopyWith<StyleSettingsModel, StyleSettingsModel,
          StyleSettingsModel>
      get copyWith => _StyleSettingsModelCopyWithImpl(
          this as StyleSettingsModel, $identity, $identity);
  @override
  String toString() {
    return StyleSettingsModelMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            StyleSettingsModelMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return StyleSettingsModelMapper._guard((c) => c.hash(this));
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
