import 'package:freezed_annotation/freezed_annotation.dart';

part 'noted_text_theme.freezed.dart';
part 'noted_text_theme.g.dart';

/// A model for a text theme. The model specifies a [String] font family name.
@freezed
class NotedTextTheme with _$NotedTextTheme {
  const factory NotedTextTheme({
    required String fontFamily,
  }) = _NotedTextTheme;

  factory NotedTextTheme.fromJson(Map<String, Object?> json) => _$NotedTextThemeFromJson(json);
}
