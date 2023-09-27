import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'noted_tag_settings.mapper.dart';

/// A set of settings for a user's tags.
@MappableClass()
class NotedTagSettings with NotedTagSettingsMappable {
  final Set<NotedTag> tags;

  static final fromMap = NotedTagSettingsMapper.fromMap;
  static final fromJson = NotedTagSettingsMapper.fromJson;

  const NotedTagSettings({this.tags = const {}});

  NotedTag? getTag(String id) => tags.firstWhere((element) => element.id == id, orElse: NotedTag.empty);
}
