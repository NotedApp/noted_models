// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'noted_text_theme.dart';

class NotedTextThemeNameMapper extends EnumMapper<NotedTextThemeName> {
  NotedTextThemeNameMapper._();

  static NotedTextThemeNameMapper? _instance;
  static NotedTextThemeNameMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NotedTextThemeNameMapper._());
    }
    return _instance!;
  }

  static NotedTextThemeName fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  NotedTextThemeName decode(dynamic value) {
    switch (value) {
      case 'poppins':
        return NotedTextThemeName.poppins;
      case 'roboto':
        return NotedTextThemeName.roboto;
      case 'lora':
        return NotedTextThemeName.lora;
      case 'vollkorn':
        return NotedTextThemeName.vollkorn;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(NotedTextThemeName self) {
    switch (self) {
      case NotedTextThemeName.poppins:
        return 'poppins';
      case NotedTextThemeName.roboto:
        return 'roboto';
      case NotedTextThemeName.lora:
        return 'lora';
      case NotedTextThemeName.vollkorn:
        return 'vollkorn';
    }
  }
}

extension NotedTextThemeNameMapperExtension on NotedTextThemeName {
  String toValue() {
    NotedTextThemeNameMapper.ensureInitialized();
    return MapperContainer.globals.toValue(this) as String;
  }
}

class NotedTextThemeMapper extends ClassMapperBase<NotedTextTheme> {
  NotedTextThemeMapper._();

  static NotedTextThemeMapper? _instance;
  static NotedTextThemeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NotedTextThemeMapper._());
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'NotedTextTheme';

  static String _$fontFamily(NotedTextTheme v) => v.fontFamily;
  static const Field<NotedTextTheme, String> _f$fontFamily =
      Field('fontFamily', _$fontFamily);

  @override
  final Map<Symbol, Field<NotedTextTheme, dynamic>> fields = const {
    #fontFamily: _f$fontFamily,
  };

  static NotedTextTheme _instantiate(DecodingData data) {
    return NotedTextTheme(fontFamily: data.dec(_f$fontFamily));
  }

  @override
  final Function instantiate = _instantiate;

  static NotedTextTheme fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<NotedTextTheme>(map));
  }

  static NotedTextTheme fromJson(String json) {
    return _guard((c) => c.fromJson<NotedTextTheme>(json));
  }
}

mixin NotedTextThemeMappable {
  String toJson() {
    return NotedTextThemeMapper._guard((c) => c.toJson(this as NotedTextTheme));
  }

  Map<String, dynamic> toMap() {
    return NotedTextThemeMapper._guard((c) => c.toMap(this as NotedTextTheme));
  }

  NotedTextThemeCopyWith<NotedTextTheme, NotedTextTheme, NotedTextTheme>
      get copyWith => _NotedTextThemeCopyWithImpl(
          this as NotedTextTheme, $identity, $identity);
  @override
  String toString() {
    return NotedTextThemeMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            NotedTextThemeMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return NotedTextThemeMapper._guard((c) => c.hash(this));
  }
}

extension NotedTextThemeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NotedTextTheme, $Out> {
  NotedTextThemeCopyWith<$R, NotedTextTheme, $Out> get $asNotedTextTheme =>
      $base.as((v, t, t2) => _NotedTextThemeCopyWithImpl(v, t, t2));
}

abstract class NotedTextThemeCopyWith<$R, $In extends NotedTextTheme, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? fontFamily});
  NotedTextThemeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NotedTextThemeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NotedTextTheme, $Out>
    implements NotedTextThemeCopyWith<$R, NotedTextTheme, $Out> {
  _NotedTextThemeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NotedTextTheme> $mapper =
      NotedTextThemeMapper.ensureInitialized();
  @override
  $R call({String? fontFamily}) => $apply(
      FieldCopyWithData({if (fontFamily != null) #fontFamily: fontFamily}));
  @override
  NotedTextTheme $make(CopyWithData data) =>
      NotedTextTheme(fontFamily: data.get(#fontFamily, or: $value.fontFamily));

  @override
  NotedTextThemeCopyWith<$R2, NotedTextTheme, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NotedTextThemeCopyWithImpl($value, $cast, t);
}
