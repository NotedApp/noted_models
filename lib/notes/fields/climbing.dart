import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'climbing.mapper.dart';

@MappableEnum()
enum ClimbingSetting {
  indoor,
  outdoor,
}

@MappableEnum()
enum ClimbingType {
  boulder,
  sport,
  traditional,
}

class ClimbingSettingHook extends FieldHook<ClimbingSetting, String> {
  const ClimbingSettingHook();

  @override
  MapEntry<String, String> beforeEncode(String key, value) =>
      MapEntry(key, value is ClimbingSetting ? ClimbingSettingMapper.ensureInitialized().encode(value) : value);

  @override
  MapEntry<String, ClimbingSetting> afterDecode(String key, value) =>
      MapEntry(key, value is String ? ClimbingSettingMapper.ensureInitialized().decode(value) : value);
}

class ClimbingTypeHook extends FieldHook<ClimbingType, String> {
  const ClimbingTypeHook();

  @override
  MapEntry<String, String> beforeEncode(String key, value) =>
      MapEntry(key, value is ClimbingType ? ClimbingTypeMapper.ensureInitialized().encode(value) : value);

  @override
  MapEntry<String, ClimbingType> afterDecode(String key, value) =>
      MapEntry(key, value is String ? ClimbingTypeMapper.ensureInitialized().decode(value) : value);
}
