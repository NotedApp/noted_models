// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'climbing.dart';

class ClimbingSettingMapper extends EnumMapper<ClimbingSetting> {
  ClimbingSettingMapper._();

  static ClimbingSettingMapper? _instance;
  static ClimbingSettingMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ClimbingSettingMapper._());
    }
    return _instance!;
  }

  static ClimbingSetting fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ClimbingSetting decode(dynamic value) {
    switch (value) {
      case 'indoor':
        return ClimbingSetting.indoor;
      case 'outdoor':
        return ClimbingSetting.outdoor;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ClimbingSetting self) {
    switch (self) {
      case ClimbingSetting.indoor:
        return 'indoor';
      case ClimbingSetting.outdoor:
        return 'outdoor';
    }
  }
}

extension ClimbingSettingMapperExtension on ClimbingSetting {
  String toValue() {
    ClimbingSettingMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ClimbingSetting>(this) as String;
  }
}

class ClimbingTypeMapper extends EnumMapper<ClimbingType> {
  ClimbingTypeMapper._();

  static ClimbingTypeMapper? _instance;
  static ClimbingTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ClimbingTypeMapper._());
    }
    return _instance!;
  }

  static ClimbingType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ClimbingType decode(dynamic value) {
    switch (value) {
      case 'boulder':
        return ClimbingType.boulder;
      case 'sport':
        return ClimbingType.sport;
      case 'traditional':
        return ClimbingType.traditional;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ClimbingType self) {
    switch (self) {
      case ClimbingType.boulder:
        return 'boulder';
      case ClimbingType.sport:
        return 'sport';
      case ClimbingType.traditional:
        return 'traditional';
    }
  }
}

extension ClimbingTypeMapperExtension on ClimbingType {
  String toValue() {
    ClimbingTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ClimbingType>(this) as String;
  }
}
