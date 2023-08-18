// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'noted_style_settings.dart';

class NotedColorSchemeNameMapper extends EnumMapper<NotedColorSchemeName> {
  NotedColorSchemeNameMapper._();

  static NotedColorSchemeNameMapper? _instance;
  static NotedColorSchemeNameMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NotedColorSchemeNameMapper._());
    }
    return _instance!;
  }

  static NotedColorSchemeName fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  NotedColorSchemeName decode(dynamic value) {
    switch (value) {
      case 'blue':
        return NotedColorSchemeName.blue;
      case 'green':
        return NotedColorSchemeName.green;
      case 'dark':
        return NotedColorSchemeName.dark;
      case 'oled':
        return NotedColorSchemeName.oled;
      case 'light':
        return NotedColorSchemeName.light;
      case 'custom':
        return NotedColorSchemeName.custom;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(NotedColorSchemeName self) {
    switch (self) {
      case NotedColorSchemeName.blue:
        return 'blue';
      case NotedColorSchemeName.green:
        return 'green';
      case NotedColorSchemeName.dark:
        return 'dark';
      case NotedColorSchemeName.oled:
        return 'oled';
      case NotedColorSchemeName.light:
        return 'light';
      case NotedColorSchemeName.custom:
        return 'custom';
    }
  }
}

extension NotedColorSchemeNameMapperExtension on NotedColorSchemeName {
  String toValue() {
    NotedColorSchemeNameMapper.ensureInitialized();
    return MapperContainer.globals.toValue(this) as String;
  }
}

class NotedStyleSettingsMapper extends ClassMapperBase<NotedStyleSettings> {
  NotedStyleSettingsMapper._();

  static NotedStyleSettingsMapper? _instance;
  static NotedStyleSettingsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NotedStyleSettingsMapper._());
      NotedColorSchemeNameMapper.ensureInitialized();
      NotedColorSchemeMapper.ensureInitialized();
      NotedTextThemeMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'NotedStyleSettings';

  static NotedColorSchemeName _$currentColorSchemeName(NotedStyleSettings v) =>
      v.currentColorSchemeName;
  static const Field<NotedStyleSettings, NotedColorSchemeName>
      _f$currentColorSchemeName = Field(
          'currentColorSchemeName', _$currentColorSchemeName,
          opt: true, def: NotedColorSchemeName.blue);
  static NotedColorScheme _$customColorScheme(NotedStyleSettings v) =>
      v.customColorScheme;
  static const Field<NotedStyleSettings, NotedColorScheme>
      _f$customColorScheme = Field('customColorScheme', _$customColorScheme,
          opt: true, def: NotedColorScheme.blue);
  static NotedTextTheme _$textTheme(NotedStyleSettings v) => v.textTheme;
  static const Field<NotedStyleSettings, NotedTextTheme> _f$textTheme =
      Field('textTheme', _$textTheme, opt: true, def: NotedTextTheme.poppins);

  @override
  final Map<Symbol, Field<NotedStyleSettings, dynamic>> fields = const {
    #currentColorSchemeName: _f$currentColorSchemeName,
    #customColorScheme: _f$customColorScheme,
    #textTheme: _f$textTheme,
  };

  static NotedStyleSettings _instantiate(DecodingData data) {
    return NotedStyleSettings(
        currentColorSchemeName: data.dec(_f$currentColorSchemeName),
        customColorScheme: data.dec(_f$customColorScheme),
        textTheme: data.dec(_f$textTheme));
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
  NotedTextThemeCopyWith<$R, NotedTextTheme, NotedTextTheme> get textTheme;
  $R call(
      {NotedColorSchemeName? currentColorSchemeName,
      NotedColorScheme? customColorScheme,
      NotedTextTheme? textTheme});
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
  NotedTextThemeCopyWith<$R, NotedTextTheme, NotedTextTheme> get textTheme =>
      $value.textTheme.copyWith.$chain((v) => call(textTheme: v));
  @override
  $R call(
          {NotedColorSchemeName? currentColorSchemeName,
          NotedColorScheme? customColorScheme,
          NotedTextTheme? textTheme}) =>
      $apply(FieldCopyWithData({
        if (currentColorSchemeName != null)
          #currentColorSchemeName: currentColorSchemeName,
        if (customColorScheme != null) #customColorScheme: customColorScheme,
        if (textTheme != null) #textTheme: textTheme
      }));
  @override
  NotedStyleSettings $make(CopyWithData data) => NotedStyleSettings(
      currentColorSchemeName:
          data.get(#currentColorSchemeName, or: $value.currentColorSchemeName),
      customColorScheme:
          data.get(#customColorScheme, or: $value.customColorScheme),
      textTheme: data.get(#textTheme, or: $value.textTheme));

  @override
  NotedStyleSettingsCopyWith<$R2, NotedStyleSettings, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NotedStyleSettingsCopyWithImpl($value, $cast, t);
}
