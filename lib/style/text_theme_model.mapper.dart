// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'text_theme_model.dart';

class TextThemeModelNameMapper extends EnumMapper<TextThemeModelName> {
  TextThemeModelNameMapper._();

  static TextThemeModelNameMapper? _instance;
  static TextThemeModelNameMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TextThemeModelNameMapper._());
    }
    return _instance!;
  }

  static TextThemeModelName fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  TextThemeModelName decode(dynamic value) {
    switch (value) {
      case 'poppins':
        return TextThemeModelName.poppins;
      case 'roboto':
        return TextThemeModelName.roboto;
      case 'lora':
        return TextThemeModelName.lora;
      case 'vollkorn':
        return TextThemeModelName.vollkorn;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(TextThemeModelName self) {
    switch (self) {
      case TextThemeModelName.poppins:
        return 'poppins';
      case TextThemeModelName.roboto:
        return 'roboto';
      case TextThemeModelName.lora:
        return 'lora';
      case TextThemeModelName.vollkorn:
        return 'vollkorn';
    }
  }
}

extension TextThemeModelNameMapperExtension on TextThemeModelName {
  String toValue() {
    TextThemeModelNameMapper.ensureInitialized();
    return MapperContainer.globals.toValue<TextThemeModelName>(this) as String;
  }
}

class TextThemeModelMapper extends ClassMapperBase<TextThemeModel> {
  TextThemeModelMapper._();

  static TextThemeModelMapper? _instance;
  static TextThemeModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TextThemeModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TextThemeModel';

  static String _$fontFamily(TextThemeModel v) => v.fontFamily;
  static const Field<TextThemeModel, String> _f$fontFamily =
      Field('fontFamily', _$fontFamily);

  @override
  final MappableFields<TextThemeModel> fields = const {
    #fontFamily: _f$fontFamily,
  };

  static TextThemeModel _instantiate(DecodingData data) {
    return TextThemeModel(fontFamily: data.dec(_f$fontFamily));
  }

  @override
  final Function instantiate = _instantiate;

  static TextThemeModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TextThemeModel>(map);
  }

  static TextThemeModel fromJson(String json) {
    return ensureInitialized().decodeJson<TextThemeModel>(json);
  }
}

mixin TextThemeModelMappable {
  String toJson() {
    return TextThemeModelMapper.ensureInitialized()
        .encodeJson<TextThemeModel>(this as TextThemeModel);
  }

  Map<String, dynamic> toMap() {
    return TextThemeModelMapper.ensureInitialized()
        .encodeMap<TextThemeModel>(this as TextThemeModel);
  }

  TextThemeModelCopyWith<TextThemeModel, TextThemeModel, TextThemeModel>
      get copyWith => _TextThemeModelCopyWithImpl(
          this as TextThemeModel, $identity, $identity);
  @override
  String toString() {
    return TextThemeModelMapper.ensureInitialized()
        .stringifyValue(this as TextThemeModel);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            TextThemeModelMapper.ensureInitialized()
                .isValueEqual(this as TextThemeModel, other));
  }

  @override
  int get hashCode {
    return TextThemeModelMapper.ensureInitialized()
        .hashValue(this as TextThemeModel);
  }
}

extension TextThemeModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TextThemeModel, $Out> {
  TextThemeModelCopyWith<$R, TextThemeModel, $Out> get $asTextThemeModel =>
      $base.as((v, t, t2) => _TextThemeModelCopyWithImpl(v, t, t2));
}

abstract class TextThemeModelCopyWith<$R, $In extends TextThemeModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? fontFamily});
  TextThemeModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TextThemeModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TextThemeModel, $Out>
    implements TextThemeModelCopyWith<$R, TextThemeModel, $Out> {
  _TextThemeModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TextThemeModel> $mapper =
      TextThemeModelMapper.ensureInitialized();
  @override
  $R call({String? fontFamily}) => $apply(
      FieldCopyWithData({if (fontFamily != null) #fontFamily: fontFamily}));
  @override
  TextThemeModel $make(CopyWithData data) =>
      TextThemeModel(fontFamily: data.get(#fontFamily, or: $value.fontFamily));

  @override
  TextThemeModelCopyWith<$R2, TextThemeModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TextThemeModelCopyWithImpl($value, $cast, t);
}
