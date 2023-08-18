import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'noted_settings.mapper.dart';

/// A set of settings for a given user.
@MappableClass()
class NotedSettings with NotedSettingsMappable {
  final NotedStyleSettings style;

  static final fromMap = NotedSettingsMapper.fromMap;
  static final fromJson = NotedSettingsMapper.fromJson;

  const NotedSettings({
    required this.style,
  });
}
