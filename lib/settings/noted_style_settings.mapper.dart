// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'noted_style_settings.dart';

class NotedStyleSettingsMapper extends ClassMapperBase<NotedStyleSettings> {
  NotedStyleSettingsMapper._();

  static NotedStyleSettingsMapper? _instance;
  static NotedStyleSettingsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NotedStyleSettingsMapper._());
      NotedColorSchemeNameMapper.ensureInitialized();
      NotedColorSchemeMapper.ensureInitialized();
      NotedTextThemeNameMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'NotedStyleSettings';

  static NotedColorSchemeName _$colorSchemeName(NotedStyleSettings v) =>
      v.colorSchemeName;
  static const Field<NotedStyleSettings, NotedColorSchemeName>
      _f$colorSchemeName = Field('colorSchemeName', _$colorSchemeName,
          opt: true, def: NotedColorSchemeName.blue);
  static NotedColorScheme _$customColorScheme(NotedStyleSettings v) =>
      v.customColorScheme;
  static const Field<NotedStyleSettings, NotedColorScheme>
      _f$customColorScheme = Field('customColorScheme', _$customColorScheme,
          opt: true, def: NotedColorScheme.blue);
  static NotedTextThemeName _$textThemeName(NotedStyleSettings v) =>
      v.textThemeName;
  static const Field<NotedStyleSettings, NotedTextThemeName> _f$textThemeName =
      Field('textThemeName', _$textThemeName,
          opt: true, def: NotedTextThemeName.poppins);
  static List<int> _$textColors(NotedStyleSettings v) => v.textColors;
  static const Field<NotedStyleSettings, List<int>> _f$textColors =
      Field('textColors', _$textColors, opt: true, def: _textColors);
  static List<int> _$highlightColors(NotedStyleSettings v) => v.highlightColors;
  static const Field<NotedStyleSettings, List<int>> _f$highlightColors = Field(
      'highlightColors', _$highlightColors,
      opt: true, def: _highlightColors);

  @override
  final Map<Symbol, Field<NotedStyleSettings, dynamic>> fields = const {
    #colorSchemeName: _f$colorSchemeName,
    #customColorScheme: _f$customColorScheme,
    #textThemeName: _f$textThemeName,
    #textColors: _f$textColors,
    #highlightColors: _f$highlightColors,
  };

  static NotedStyleSettings _instantiate(DecodingData data) {
    return NotedStyleSettings(
        colorSchemeName: data.dec(_f$colorSchemeName),
        customColorScheme: data.dec(_f$customColorScheme),
        textThemeName: data.dec(_f$textThemeName),
        textColors: data.dec(_f$textColors),
        highlightColors: data.dec(_f$highlightColors));
  }

  @override
  final Function instantiate = _instantiate;

  static NotedStyleSettings fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<NotedStyleSettings>(map));
  }

  static NotedStyleSettings fromJson(String json) {
    return _guard((c) => c.fromJson<NotedStyleSettings>(json));
  }
}

mixin NotedStyleSettingsMappable {
  String toJson() {
    return NotedStyleSettingsMapper._guard(
        (c) => c.toJson(this as NotedStyleSettings));
  }

  Map<String, dynamic> toMap() {
    return NotedStyleSettingsMapper._guard(
        (c) => c.toMap(this as NotedStyleSettings));
  }

  NotedStyleSettingsCopyWith<NotedStyleSettings, NotedStyleSettings,
          NotedStyleSettings>
      get copyWith => _NotedStyleSettingsCopyWithImpl(
          this as NotedStyleSettings, $identity, $identity);
  @override
  String toString() {
    return NotedStyleSettingsMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            NotedStyleSettingsMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return NotedStyleSettingsMapper._guard((c) => c.hash(this));
  }
}

extension NotedStyleSettingsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NotedStyleSettings, $Out> {
  NotedStyleSettingsCopyWith<$R, NotedStyleSettings, $Out>
      get $asNotedStyleSettings =>
          $base.as((v, t, t2) => _NotedStyleSettingsCopyWithImpl(v, t, t2));
}

abstract class NotedStyleSettingsCopyWith<$R, $In extends NotedStyleSettings,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  NotedColorSchemeCopyWith<$R, NotedColorScheme, NotedColorScheme>
      get customColorScheme;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get textColors;
  ListCopyWith<$R, int, ObjectCopyWith<$R, int, int>> get highlightColors;
  $R call(
      {NotedColorSchemeName? colorSchemeName,
      NotedColorScheme? customColorScheme,
      NotedTextThemeName? textThemeName,
      List<int>? textColors,
      List<int>? highlightColors});
  NotedStyleSettingsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NotedStyleSettingsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NotedStyleSettings, $Out>
    implements NotedStyleSettingsCopyWith<$R, NotedStyleSettings, $Out> {
  _NotedStyleSettingsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NotedStyleSettings> $mapper =
      NotedStyleSettingsMapper.ensureInitialized();
  @override
  NotedColorSchemeCopyWith<$R, NotedColorScheme, NotedColorScheme>
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
          {NotedColorSchemeName? colorSchemeName,
          NotedColorScheme? customColorScheme,
          NotedTextThemeName? textThemeName,
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
  NotedStyleSettings $make(CopyWithData data) => NotedStyleSettings(
      colorSchemeName: data.get(#colorSchemeName, or: $value.colorSchemeName),
      customColorScheme:
          data.get(#customColorScheme, or: $value.customColorScheme),
      textThemeName: data.get(#textThemeName, or: $value.textThemeName),
      textColors: data.get(#textColors, or: $value.textColors),
      highlightColors: data.get(#highlightColors, or: $value.highlightColors));

  @override
  NotedStyleSettingsCopyWith<$R2, NotedStyleSettings, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NotedStyleSettingsCopyWithImpl($value, $cast, t);
}
