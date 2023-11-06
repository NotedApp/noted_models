import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'plugin_settings_model.mapper.dart';

@MappableClass()
class PluginSettingsModel with PluginSettingsModelMappable {
  final CookbookSettingsModel cookbook;

  static final fromMap = PluginSettingsModelMapper.fromMap;
  static final fromJson = SettingsModelMapper.fromJson;

  const PluginSettingsModel({
    this.cookbook = const CookbookSettingsModel(),
  });
}
