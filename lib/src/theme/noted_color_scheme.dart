import 'package:freezed_annotation/freezed_annotation.dart';

part 'noted_color_scheme.freezed.dart';
part 'noted_color_scheme.g.dart';

/// A model for a color scheme. The model has a [NotedBrightness] to specify its brightness, and a set of [String]s to
/// specify its different colors.
@freezed
class NotedColorScheme with _$NotedColorScheme {
  const factory NotedColorScheme({
    required NotedBrightness brightness,
    required String primary,
    required String onPrimary,
    required String secondary,
    required String onSecondary,
    required String tertiary,
    required String onTertiary,
    required String surface,
    required String onSurface,
    required String background,
    required String onBackground,
  }) = _NotedColorScheme;

  factory NotedColorScheme.fromJson(Map<String, Object?> json) => _$NotedColorSchemeFromJson(json);
}

enum NotedBrightness {
  dark,
  light,
}
