// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'plugin_model.dart';

class NotedPluginMapper extends EnumMapper<NotedPlugin> {
  NotedPluginMapper._();

  static NotedPluginMapper? _instance;
  static NotedPluginMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NotedPluginMapper._());
    }
    return _instance!;
  }

  static NotedPlugin fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  NotedPlugin decode(dynamic value) {
    switch (value) {
      case 'notebook':
        return NotedPlugin.notebook;
      case 'cookbook':
        return NotedPlugin.cookbook;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(NotedPlugin self) {
    switch (self) {
      case NotedPlugin.notebook:
        return 'notebook';
      case NotedPlugin.cookbook:
        return 'cookbook';
    }
  }
}

extension NotedPluginMapperExtension on NotedPlugin {
  String toValue() {
    NotedPluginMapper.ensureInitialized();
    return MapperContainer.globals.toValue<NotedPlugin>(this) as String;
  }
}
