// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'noted_text_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotedTextTheme _$NotedTextThemeFromJson(Map<String, dynamic> json) {
  return _NotedTextTheme.fromJson(json);
}

/// @nodoc
mixin _$NotedTextTheme {
  String get fontFamily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotedTextThemeCopyWith<NotedTextTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotedTextThemeCopyWith<$Res> {
  factory $NotedTextThemeCopyWith(
          NotedTextTheme value, $Res Function(NotedTextTheme) then) =
      _$NotedTextThemeCopyWithImpl<$Res, NotedTextTheme>;
  @useResult
  $Res call({String fontFamily});
}

/// @nodoc
class _$NotedTextThemeCopyWithImpl<$Res, $Val extends NotedTextTheme>
    implements $NotedTextThemeCopyWith<$Res> {
  _$NotedTextThemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fontFamily = null,
  }) {
    return _then(_value.copyWith(
      fontFamily: null == fontFamily
          ? _value.fontFamily
          : fontFamily // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotedTextThemeCopyWith<$Res>
    implements $NotedTextThemeCopyWith<$Res> {
  factory _$$_NotedTextThemeCopyWith(
          _$_NotedTextTheme value, $Res Function(_$_NotedTextTheme) then) =
      __$$_NotedTextThemeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fontFamily});
}

/// @nodoc
class __$$_NotedTextThemeCopyWithImpl<$Res>
    extends _$NotedTextThemeCopyWithImpl<$Res, _$_NotedTextTheme>
    implements _$$_NotedTextThemeCopyWith<$Res> {
  __$$_NotedTextThemeCopyWithImpl(
      _$_NotedTextTheme _value, $Res Function(_$_NotedTextTheme) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fontFamily = null,
  }) {
    return _then(_$_NotedTextTheme(
      fontFamily: null == fontFamily
          ? _value.fontFamily
          : fontFamily // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotedTextTheme implements _NotedTextTheme {
  const _$_NotedTextTheme({required this.fontFamily});

  factory _$_NotedTextTheme.fromJson(Map<String, dynamic> json) =>
      _$$_NotedTextThemeFromJson(json);

  @override
  final String fontFamily;

  @override
  String toString() {
    return 'NotedTextTheme(fontFamily: $fontFamily)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotedTextTheme &&
            (identical(other.fontFamily, fontFamily) ||
                other.fontFamily == fontFamily));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fontFamily);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotedTextThemeCopyWith<_$_NotedTextTheme> get copyWith =>
      __$$_NotedTextThemeCopyWithImpl<_$_NotedTextTheme>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotedTextThemeToJson(
      this,
    );
  }
}

abstract class _NotedTextTheme implements NotedTextTheme {
  const factory _NotedTextTheme({required final String fontFamily}) =
      _$_NotedTextTheme;

  factory _NotedTextTheme.fromJson(Map<String, dynamic> json) =
      _$_NotedTextTheme.fromJson;

  @override
  String get fontFamily;
  @override
  @JsonKey(ignore: true)
  _$$_NotedTextThemeCopyWith<_$_NotedTextTheme> get copyWith =>
      throw _privateConstructorUsedError;
}
