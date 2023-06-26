// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'noted_color_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotedColorScheme _$$_NotedColorSchemeFromJson(Map<String, dynamic> json) =>
    _$_NotedColorScheme(
      brightness: $enumDecode(_$NotedBrightnessEnumMap, json['brightness']),
      primary: json['primary'] as int,
      onPrimary: json['onPrimary'] as int,
      secondary: json['secondary'] as int,
      onSecondary: json['onSecondary'] as int,
      tertiary: json['tertiary'] as int,
      onTertiary: json['onTertiary'] as int,
      error: json['error'] as int,
      onError: json['onError'] as int,
      surface: json['surface'] as int,
      onSurface: json['onSurface'] as int,
      background: json['background'] as int,
      onBackground: json['onBackground'] as int,
    );

Map<String, dynamic> _$$_NotedColorSchemeToJson(_$_NotedColorScheme instance) =>
    <String, dynamic>{
      'brightness': _$NotedBrightnessEnumMap[instance.brightness]!,
      'primary': instance.primary,
      'onPrimary': instance.onPrimary,
      'secondary': instance.secondary,
      'onSecondary': instance.onSecondary,
      'tertiary': instance.tertiary,
      'onTertiary': instance.onTertiary,
      'error': instance.error,
      'onError': instance.onError,
      'surface': instance.surface,
      'onSurface': instance.onSurface,
      'background': instance.background,
      'onBackground': instance.onBackground,
    };

const _$NotedBrightnessEnumMap = {
  NotedBrightness.dark: 'dark',
  NotedBrightness.light: 'light',
};
