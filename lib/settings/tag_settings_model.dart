import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'tag_settings_model.mapper.dart';

@MappableClass()
class TagSettingsModel with TagSettingsModelMappable {
  final bool showTags;
  final Set<TagModel> tags;

  static const fromMap = TagSettingsModelMapper.fromMap;
  static const fromJson = TagSettingsModelMapper.fromJson;

  const TagSettingsModel({this.showTags = true, this.tags = const {}});

  TagModel? getTag(String id) => tags.firstWhere((element) => element.id == id, orElse: TagModel.empty);
}
