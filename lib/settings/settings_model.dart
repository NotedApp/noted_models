import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'settings_model.mapper.dart';

@MappableClass()
class SettingsModel with SettingsModelMappable {
  final StyleSettingsModel style;
  final TagSettingsModel tags;
  final PluginSettingsModel plugins;

  static final fromMap = SettingsModelMapper.fromMap;
  static final fromJson = SettingsModelMapper.fromJson;

  const SettingsModel({
    this.style = const StyleSettingsModel(),
    this.tags = const TagSettingsModel(),
    this.plugins = const PluginSettingsModel(),
  });
}
