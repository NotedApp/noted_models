// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'noted_color_scheme.dart';

class NotedBrightnessMapper extends EnumMapper<NotedBrightness> {
  NotedBrightnessMapper._();

  static NotedBrightnessMapper? _instance;
  static NotedBrightnessMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NotedBrightnessMapper._());
    }
    return _instance!;
  }

  static NotedBrightness fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  NotedBrightness decode(dynamic value) {
    switch (value) {
      case 'dark':
        return NotedBrightness.dark;
      case 'light':
        return NotedBrightness.light;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(NotedBrightness self) {
    switch (self) {
      case NotedBrightness.dark:
        return 'dark';
      case NotedBrightness.light:
        return 'light';
    }
  }
}

extension NotedBrightnessMapperExtension on NotedBrightness {
  String toValue() {
    NotedBrightnessMapper.ensureInitialized();
    return MapperContainer.globals.toValue(this) as String;
  }
}

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

class NotedColorSchemeMapper extends ClassMapperBase<NotedColorScheme> {
  NotedColorSchemeMapper._();

  static NotedColorSchemeMapper? _instance;
  static NotedColorSchemeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NotedColorSchemeMapper._());
      NotedBrightnessMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'NotedColorScheme';

  static NotedBrightness _$brightness(NotedColorScheme v) => v.brightness;
  static const Field<NotedColorScheme, NotedBrightness> _f$brightness =
      Field('brightness', _$brightness);
  static int _$primary(NotedColorScheme v) => v.primary;
  static const Field<NotedColorScheme, int> _f$primary =
      Field('primary', _$primary);
  static int _$onPrimary(NotedColorScheme v) => v.onPrimary;
  static const Field<NotedColorScheme, int> _f$onPrimary =
      Field('onPrimary', _$onPrimary);
  static int _$secondary(NotedColorScheme v) => v.secondary;
  static const Field<NotedColorScheme, int> _f$secondary =
      Field('secondary', _$secondary);
  static int _$onSecondary(NotedColorScheme v) => v.onSecondary;
  static const Field<NotedColorScheme, int> _f$onSecondary =
      Field('onSecondary', _$onSecondary);
  static int _$tertiary(NotedColorScheme v) => v.tertiary;
  static const Field<NotedColorScheme, int> _f$tertiary =
      Field('tertiary', _$tertiary);
  static int _$onTertiary(NotedColorScheme v) => v.onTertiary;
  static const Field<NotedColorScheme, int> _f$onTertiary =
      Field('onTertiary', _$onTertiary);
  static int _$error(NotedColorScheme v) => v.error;
  static const Field<NotedColorScheme, int> _f$error = Field('error', _$error);
  static int _$onError(NotedColorScheme v) => v.onError;
  static const Field<NotedColorScheme, int> _f$onError =
      Field('onError', _$onError);
  static int _$surface(NotedColorScheme v) => v.surface;
  static const Field<NotedColorScheme, int> _f$surface =
      Field('surface', _$surface);
  static int _$onSurface(NotedColorScheme v) => v.onSurface;
  static const Field<NotedColorScheme, int> _f$onSurface =
      Field('onSurface', _$onSurface);
  static int _$background(NotedColorScheme v) => v.background;
  static const Field<NotedColorScheme, int> _f$background =
      Field('background', _$background);
  static int _$onBackground(NotedColorScheme v) => v.onBackground;
  static const Field<NotedColorScheme, int> _f$onBackground =
      Field('onBackground', _$onBackground);

  @override
  final Map<Symbol, Field<NotedColorScheme, dynamic>> fields = const {
    #brightness: _f$brightness,
    #primary: _f$primary,
    #onPrimary: _f$onPrimary,
    #secondary: _f$secondary,
    #onSecondary: _f$onSecondary,
    #tertiary: _f$tertiary,
    #onTertiary: _f$onTertiary,
    #error: _f$error,
    #onError: _f$onError,
    #surface: _f$surface,
    #onSurface: _f$onSurface,
    #background: _f$background,
    #onBackground: _f$onBackground,
  };

  static NotedColorScheme _instantiate(DecodingData data) {
    return NotedColorScheme(
        brightness: data.dec(_f$brightness),
        primary: data.dec(_f$primary),
        onPrimary: data.dec(_f$onPrimary),
        secondary: data.dec(_f$secondary),
        onSecondary: data.dec(_f$onSecondary),
        tertiary: data.dec(_f$tertiary),
        onTertiary: data.dec(_f$onTertiary),
        error: data.dec(_f$error),
        onError: data.dec(_f$onError),
        surface: data.dec(_f$surface),
        onSurface: data.dec(_f$onSurface),
        background: data.dec(_f$background),
        onBackground: data.dec(_f$onBackground));
  }

  @override
  final Function instantiate = _instantiate;

  static NotedColorScheme fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<NotedColorScheme>(map));
  }

  static NotedColorScheme fromJson(String json) {
    return _guard((c) => c.fromJson<NotedColorScheme>(json));
  }
}

mixin NotedColorSchemeMappable {
  String toJson() {
    return NotedColorSchemeMapper._guard(
        (c) => c.toJson(this as NotedColorScheme));
  }

  Map<String, dynamic> toMap() {
    return NotedColorSchemeMapper._guard(
        (c) => c.toMap(this as NotedColorScheme));
  }

  NotedColorSchemeCopyWith<NotedColorScheme, NotedColorScheme, NotedColorScheme>
      get copyWith => _NotedColorSchemeCopyWithImpl(
          this as NotedColorScheme, $identity, $identity);
  @override
  String toString() {
    return NotedColorSchemeMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            NotedColorSchemeMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return NotedColorSchemeMapper._guard((c) => c.hash(this));
  }
}

extension NotedColorSchemeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NotedColorScheme, $Out> {
  NotedColorSchemeCopyWith<$R, NotedColorScheme, $Out>
      get $asNotedColorScheme =>
          $base.as((v, t, t2) => _NotedColorSchemeCopyWithImpl(v, t, t2));
}

abstract class NotedColorSchemeCopyWith<$R, $In extends NotedColorScheme, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {NotedBrightness? brightness,
      int? primary,
      int? onPrimary,
      int? secondary,
      int? onSecondary,
      int? tertiary,
      int? onTertiary,
      int? error,
      int? onError,
      int? surface,
      int? onSurface,
      int? background,
      int? onBackground});
  NotedColorSchemeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NotedColorSchemeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NotedColorScheme, $Out>
    implements NotedColorSchemeCopyWith<$R, NotedColorScheme, $Out> {
  _NotedColorSchemeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NotedColorScheme> $mapper =
      NotedColorSchemeMapper.ensureInitialized();
  @override
  $R call(
          {NotedBrightness? brightness,
          int? primary,
          int? onPrimary,
          int? secondary,
          int? onSecondary,
          int? tertiary,
          int? onTertiary,
          int? error,
          int? onError,
          int? surface,
          int? onSurface,
          int? background,
          int? onBackground}) =>
      $apply(FieldCopyWithData({
        if (brightness != null) #brightness: brightness,
        if (primary != null) #primary: primary,
        if (onPrimary != null) #onPrimary: onPrimary,
        if (secondary != null) #secondary: secondary,
        if (onSecondary != null) #onSecondary: onSecondary,
        if (tertiary != null) #tertiary: tertiary,
        if (onTertiary != null) #onTertiary: onTertiary,
        if (error != null) #error: error,
        if (onError != null) #onError: onError,
        if (surface != null) #surface: surface,
        if (onSurface != null) #onSurface: onSurface,
        if (background != null) #background: background,
        if (onBackground != null) #onBackground: onBackground
      }));
  @override
  NotedColorScheme $make(CopyWithData data) => NotedColorScheme(
      brightness: data.get(#brightness, or: $value.brightness),
      primary: data.get(#primary, or: $value.primary),
      onPrimary: data.get(#onPrimary, or: $value.onPrimary),
      secondary: data.get(#secondary, or: $value.secondary),
      onSecondary: data.get(#onSecondary, or: $value.onSecondary),
      tertiary: data.get(#tertiary, or: $value.tertiary),
      onTertiary: data.get(#onTertiary, or: $value.onTertiary),
      error: data.get(#error, or: $value.error),
      onError: data.get(#onError, or: $value.onError),
      surface: data.get(#surface, or: $value.surface),
      onSurface: data.get(#onSurface, or: $value.onSurface),
      background: data.get(#background, or: $value.background),
      onBackground: data.get(#onBackground, or: $value.onBackground));

  @override
  NotedColorSchemeCopyWith<$R2, NotedColorScheme, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NotedColorSchemeCopyWithImpl($value, $cast, t);
}
