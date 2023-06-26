// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'noted_color_scheme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotedColorScheme _$$_NotedColorSchemeFromJson(Map<String, dynamic> json) =>
    _$_NotedColorScheme(
      brightness: $enumDecode(_$NotedBrightnessEnumMap, json['brightness']),
      primary: json['primary'] as String,
      onPrimary: json['onPrimary'] as String,
      secondary: json['secondary'] as String,
      onSecondary: json['onSecondary'] as String,
      tertiary: json['tertiary'] as String,
      onTertiary: json['onTertiary'] as String,
      surface: json['surface'] as String,
      onSurface: json['onSurface'] as String,
      background: json['background'] as String,
      onBackground: json['onBackground'] as String,
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
      'surface': instance.surface,
      'onSurface': instance.onSurface,
      'background': instance.background,
      'onBackground': instance.onBackground,
    };

const _$NotedBrightnessEnumMap = {
  NotedBrightness.dark: 'dark',
  NotedBrightness.light: 'light',
};
