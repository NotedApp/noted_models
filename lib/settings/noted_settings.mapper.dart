// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'noted_settings.dart';

class NotedSettingsMapper extends ClassMapperBase<NotedSettings> {
  NotedSettingsMapper._();

  static NotedSettingsMapper? _instance;
  static NotedSettingsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NotedSettingsMapper._());
      NotedStyleSettingsMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'NotedSettings';

  static NotedStyleSettings _$style(NotedSettings v) => v.style;
  static const Field<NotedSettings, NotedStyleSettings> _f$style =
      Field('style', _$style, opt: true, def: const NotedStyleSettings());

  @override
  final Map<Symbol, Field<NotedSettings, dynamic>> fields = const {
    #style: _f$style,
  };

  static NotedSettings _instantiate(DecodingData data) {
    return NotedSettings(style: data.dec(_f$style));
  }

  @override
  final Function instantiate = _instantiate;

  static NotedSettings fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<NotedSettings>(map));
  }

  static NotedSettings fromJson(String json) {
    return _guard((c) => c.fromJson<NotedSettings>(json));
  }
}

mixin NotedSettingsMappable {
  String toJson() {
    return NotedSettingsMapper._guard((c) => c.toJson(this as NotedSettings));
  }

  Map<String, dynamic> toMap() {
    return NotedSettingsMapper._guard((c) => c.toMap(this as NotedSettings));
  }

  NotedSettingsCopyWith<NotedSettings, NotedSettings, NotedSettings>
      get copyWith => _NotedSettingsCopyWithImpl(
          this as NotedSettings, $identity, $identity);
  @override
  String toString() {
    return NotedSettingsMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            NotedSettingsMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return NotedSettingsMapper._guard((c) => c.hash(this));
  }
}

extension NotedSettingsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NotedSettings, $Out> {
  NotedSettingsCopyWith<$R, NotedSettings, $Out> get $asNotedSettings =>
      $base.as((v, t, t2) => _NotedSettingsCopyWithImpl(v, t, t2));
}

abstract class NotedSettingsCopyWith<$R, $In extends NotedSettings, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  NotedStyleSettingsCopyWith<$R, NotedStyleSettings, NotedStyleSettings>
      get style;
  $R call({NotedStyleSettings? style});
  NotedSettingsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NotedSettingsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NotedSettings, $Out>
    implements NotedSettingsCopyWith<$R, NotedSettings, $Out> {
  _NotedSettingsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NotedSettings> $mapper =
      NotedSettingsMapper.ensureInitialized();
  @override
  NotedStyleSettingsCopyWith<$R, NotedStyleSettings, NotedStyleSettings>
      get style => $value.style.copyWith.$chain((v) => call(style: v));
  @override
  $R call({NotedStyleSettings? style}) =>
      $apply(FieldCopyWithData({if (style != null) #style: style}));
  @override
  NotedSettings $make(CopyWithData data) =>
      NotedSettings(style: data.get(#style, or: $value.style));

  @override
  NotedSettingsCopyWith<$R2, NotedSettings, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NotedSettingsCopyWithImpl($value, $cast, t);
}
