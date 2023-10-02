import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'tag_settings_model.mapper.dart';

@MappableClass()
class TagSettingsModel with TagSettingsModelMappable {
  final Set<TagModel> tags;

  static final fromMap = TagSettingsModelMapper.fromMap;
  static final fromJson = TagSettingsModelMapper.fromJson;

  const TagSettingsModel({this.tags = const {}});

  TagModel? getTag(String id) => tags.firstWhere((element) => element.id == id, orElse: TagModel.empty);
}
