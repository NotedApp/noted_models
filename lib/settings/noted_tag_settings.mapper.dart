// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'noted_tag_settings.dart';

class NotedTagSettingsMapper extends ClassMapperBase<NotedTagSettings> {
  NotedTagSettingsMapper._();

  static NotedTagSettingsMapper? _instance;
  static NotedTagSettingsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NotedTagSettingsMapper._());
      NotedTagMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'NotedTagSettings';

  static Set<NotedTag> _$tags(NotedTagSettings v) => v.tags;
  static const Field<NotedTagSettings, Set<NotedTag>> _f$tags =
      Field('tags', _$tags, opt: true, def: const {});

  @override
  final Map<Symbol, Field<NotedTagSettings, dynamic>> fields = const {
    #tags: _f$tags,
  };

  static NotedTagSettings _instantiate(DecodingData data) {
    return NotedTagSettings(tags: data.dec(_f$tags));
  }

  @override
  final Function instantiate = _instantiate;

  static NotedTagSettings fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<NotedTagSettings>(map));
  }

  static NotedTagSettings fromJson(String json) {
    return _guard((c) => c.fromJson<NotedTagSettings>(json));
  }
}

mixin NotedTagSettingsMappable {
  String toJson() {
    return NotedTagSettingsMapper._guard(
        (c) => c.toJson(this as NotedTagSettings));
  }

  Map<String, dynamic> toMap() {
    return NotedTagSettingsMapper._guard(
        (c) => c.toMap(this as NotedTagSettings));
  }

  NotedTagSettingsCopyWith<NotedTagSettings, NotedTagSettings, NotedTagSettings>
      get copyWith => _NotedTagSettingsCopyWithImpl(
          this as NotedTagSettings, $identity, $identity);
  @override
  String toString() {
    return NotedTagSettingsMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            NotedTagSettingsMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return NotedTagSettingsMapper._guard((c) => c.hash(this));
  }
}

extension NotedTagSettingsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NotedTagSettings, $Out> {
  NotedTagSettingsCopyWith<$R, NotedTagSettings, $Out>
      get $asNotedTagSettings =>
          $base.as((v, t, t2) => _NotedTagSettingsCopyWithImpl(v, t, t2));
}

abstract class NotedTagSettingsCopyWith<$R, $In extends NotedTagSettings, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({Set<NotedTag>? tags});
  NotedTagSettingsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NotedTagSettingsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NotedTagSettings, $Out>
    implements NotedTagSettingsCopyWith<$R, NotedTagSettings, $Out> {
  _NotedTagSettingsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NotedTagSettings> $mapper =
      NotedTagSettingsMapper.ensureInitialized();
  @override
  $R call({Set<NotedTag>? tags}) =>
      $apply(FieldCopyWithData({if (tags != null) #tags: tags}));
  @override
  NotedTagSettings $make(CopyWithData data) =>
      NotedTagSettings(tags: data.get(#tags, or: $value.tags));

  @override
  NotedTagSettingsCopyWith<$R2, NotedTagSettings, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NotedTagSettingsCopyWithImpl($value, $cast, t);
}
