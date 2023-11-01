// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'color_scheme_model.dart';

class BrightnessMapper extends EnumMapper<Brightness> {
  BrightnessMapper._();

  static BrightnessMapper? _instance;
  static BrightnessMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BrightnessMapper._());
    }
    return _instance!;
  }

  static Brightness fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  Brightness decode(dynamic value) {
    switch (value) {
      case 'dark':
        return Brightness.dark;
      case 'light':
        return Brightness.light;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(Brightness self) {
    switch (self) {
      case Brightness.dark:
        return 'dark';
      case Brightness.light:
        return 'light';
    }
  }
}

extension BrightnessMapperExtension on Brightness {
  String toValue() {
    BrightnessMapper.ensureInitialized();
    return MapperContainer.globals.toValue(this) as String;
  }
}

class ColorSchemeModelNameMapper extends EnumMapper<ColorSchemeModelName> {
  ColorSchemeModelNameMapper._();

  static ColorSchemeModelNameMapper? _instance;
  static ColorSchemeModelNameMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ColorSchemeModelNameMapper._());
    }
    return _instance!;
  }

  static ColorSchemeModelName fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ColorSchemeModelName decode(dynamic value) {
    switch (value) {
      case 'blue':
        return ColorSchemeModelName.blue;
      case 'green':
        return ColorSchemeModelName.green;
      case 'dark':
        return ColorSchemeModelName.dark;
      case 'oled':
        return ColorSchemeModelName.oled;
      case 'light':
        return ColorSchemeModelName.light;
      case 'custom':
        return ColorSchemeModelName.custom;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ColorSchemeModelName self) {
    switch (self) {
      case ColorSchemeModelName.blue:
        return 'blue';
      case ColorSchemeModelName.green:
        return 'green';
      case ColorSchemeModelName.dark:
        return 'dark';
      case ColorSchemeModelName.oled:
        return 'oled';
      case ColorSchemeModelName.light:
        return 'light';
      case ColorSchemeModelName.custom:
        return 'custom';
    }
  }
}

extension ColorSchemeModelNameMapperExtension on ColorSchemeModelName {
  String toValue() {
    ColorSchemeModelNameMapper.ensureInitialized();
    return MapperContainer.globals.toValue(this) as String;
  }
}

class ColorSchemeModelMapper extends ClassMapperBase<ColorSchemeModel> {
  ColorSchemeModelMapper._();

  static ColorSchemeModelMapper? _instance;
  static ColorSchemeModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ColorSchemeModelMapper._());
      BrightnessMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'ColorSchemeModel';

  static Brightness _$brightness(ColorSchemeModel v) => v.brightness;
  static const Field<ColorSchemeModel, Brightness> _f$brightness =
      Field('brightness', _$brightness);
  static int _$primary(ColorSchemeModel v) => v.primary;
  static const Field<ColorSchemeModel, int> _f$primary =
      Field('primary', _$primary);
  static int _$onPrimary(ColorSchemeModel v) => v.onPrimary;
  static const Field<ColorSchemeModel, int> _f$onPrimary =
      Field('onPrimary', _$onPrimary);
  static int _$secondary(ColorSchemeModel v) => v.secondary;
  static const Field<ColorSchemeModel, int> _f$secondary =
      Field('secondary', _$secondary);
  static int _$onSecondary(ColorSchemeModel v) => v.onSecondary;
  static const Field<ColorSchemeModel, int> _f$onSecondary =
      Field('onSecondary', _$onSecondary);
  static int _$tertiary(ColorSchemeModel v) => v.tertiary;
  static const Field<ColorSchemeModel, int> _f$tertiary =
      Field('tertiary', _$tertiary);
  static int _$onTertiary(ColorSchemeModel v) => v.onTertiary;
  static const Field<ColorSchemeModel, int> _f$onTertiary =
      Field('onTertiary', _$onTertiary);
  static int _$error(ColorSchemeModel v) => v.error;
  static const Field<ColorSchemeModel, int> _f$error = Field('error', _$error);
  static int _$onError(ColorSchemeModel v) => v.onError;
  static const Field<ColorSchemeModel, int> _f$onError =
      Field('onError', _$onError);
  static int _$surface(ColorSchemeModel v) => v.surface;
  static const Field<ColorSchemeModel, int> _f$surface =
      Field('surface', _$surface);
  static int _$onSurface(ColorSchemeModel v) => v.onSurface;
  static const Field<ColorSchemeModel, int> _f$onSurface =
      Field('onSurface', _$onSurface);
  static int _$background(ColorSchemeModel v) => v.background;
  static const Field<ColorSchemeModel, int> _f$background =
      Field('background', _$background);
  static int _$onBackground(ColorSchemeModel v) => v.onBackground;
  static const Field<ColorSchemeModel, int> _f$onBackground =
      Field('onBackground', _$onBackground);

  @override
  final Map<Symbol, Field<ColorSchemeModel, dynamic>> fields = const {
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

  static ColorSchemeModel _instantiate(DecodingData data) {
    return ColorSchemeModel(
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

  static ColorSchemeModel fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<ColorSchemeModel>(map));
  }

  static ColorSchemeModel fromJson(String json) {
    return _guard((c) => c.fromJson<ColorSchemeModel>(json));
  }
}

mixin ColorSchemeModelMappable {
  String toJson() {
    return ColorSchemeModelMapper._guard(
        (c) => c.toJson(this as ColorSchemeModel));
  }

  Map<String, dynamic> toMap() {
    return ColorSchemeModelMapper._guard(
        (c) => c.toMap(this as ColorSchemeModel));
  }

  ColorSchemeModelCopyWith<ColorSchemeModel, ColorSchemeModel, ColorSchemeModel>
      get copyWith => _ColorSchemeModelCopyWithImpl(
          this as ColorSchemeModel, $identity, $identity);
  @override
  String toString() {
    return ColorSchemeModelMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            ColorSchemeModelMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return ColorSchemeModelMapper._guard((c) => c.hash(this));
  }
}

extension ColorSchemeModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ColorSchemeModel, $Out> {
  ColorSchemeModelCopyWith<$R, ColorSchemeModel, $Out>
      get $asColorSchemeModel =>
          $base.as((v, t, t2) => _ColorSchemeModelCopyWithImpl(v, t, t2));
}

abstract class ColorSchemeModelCopyWith<$R, $In extends ColorSchemeModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {Brightness? brightness,
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
  ColorSchemeModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ColorSchemeModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ColorSchemeModel, $Out>
    implements ColorSchemeModelCopyWith<$R, ColorSchemeModel, $Out> {
  _ColorSchemeModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ColorSchemeModel> $mapper =
      ColorSchemeModelMapper.ensureInitialized();
  @override
  $R call(
          {Brightness? brightness,
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
  ColorSchemeModel $make(CopyWithData data) => ColorSchemeModel(
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
  ColorSchemeModelCopyWith<$R2, ColorSchemeModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ColorSchemeModelCopyWithImpl($value, $cast, t);
}
