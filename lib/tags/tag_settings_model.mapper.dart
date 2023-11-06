// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'tag_settings_model.dart';

class TagSettingsModelMapper extends ClassMapperBase<TagSettingsModel> {
  TagSettingsModelMapper._();

  static TagSettingsModelMapper? _instance;
  static TagSettingsModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TagSettingsModelMapper._());
      TagModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TagSettingsModel';

  static bool _$showTags(TagSettingsModel v) => v.showTags;
  static const Field<TagSettingsModel, bool> _f$showTags =
      Field('showTags', _$showTags, opt: true, def: true);
  static Set<TagModel> _$tags(TagSettingsModel v) => v.tags;
  static const Field<TagSettingsModel, Set<TagModel>> _f$tags =
      Field('tags', _$tags, opt: true, def: const {});

  @override
  final Map<Symbol, Field<TagSettingsModel, dynamic>> fields = const {
    #showTags: _f$showTags,
    #tags: _f$tags,
  };

  static TagSettingsModel _instantiate(DecodingData data) {
    return TagSettingsModel(
        showTags: data.dec(_f$showTags), tags: data.dec(_f$tags));
  }

  @override
  final Function instantiate = _instantiate;

  static TagSettingsModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TagSettingsModel>(map);
  }

  static TagSettingsModel fromJson(String json) {
    return ensureInitialized().decodeJson<TagSettingsModel>(json);
  }
}

mixin TagSettingsModelMappable {
  String toJson() {
    return TagSettingsModelMapper.ensureInitialized()
        .encodeJson<TagSettingsModel>(this as TagSettingsModel);
  }

  Map<String, dynamic> toMap() {
    return TagSettingsModelMapper.ensureInitialized()
        .encodeMap<TagSettingsModel>(this as TagSettingsModel);
  }

  TagSettingsModelCopyWith<TagSettingsModel, TagSettingsModel, TagSettingsModel>
      get copyWith => _TagSettingsModelCopyWithImpl(
          this as TagSettingsModel, $identity, $identity);
  @override
  String toString() {
    return TagSettingsModelMapper.ensureInitialized()
        .stringifyValue(this as TagSettingsModel);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            TagSettingsModelMapper.ensureInitialized()
                .isValueEqual(this as TagSettingsModel, other));
  }

  @override
  int get hashCode {
    return TagSettingsModelMapper.ensureInitialized()
        .hashValue(this as TagSettingsModel);
  }
}

extension TagSettingsModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TagSettingsModel, $Out> {
  TagSettingsModelCopyWith<$R, TagSettingsModel, $Out>
      get $asTagSettingsModel =>
          $base.as((v, t, t2) => _TagSettingsModelCopyWithImpl(v, t, t2));
}

abstract class TagSettingsModelCopyWith<$R, $In extends TagSettingsModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? showTags, Set<TagModel>? tags});
  TagSettingsModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TagSettingsModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TagSettingsModel, $Out>
    implements TagSettingsModelCopyWith<$R, TagSettingsModel, $Out> {
  _TagSettingsModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TagSettingsModel> $mapper =
      TagSettingsModelMapper.ensureInitialized();
  @override
  $R call({bool? showTags, Set<TagModel>? tags}) => $apply(FieldCopyWithData({
        if (showTags != null) #showTags: showTags,
        if (tags != null) #tags: tags
      }));
  @override
  TagSettingsModel $make(CopyWithData data) => TagSettingsModel(
      showTags: data.get(#showTags, or: $value.showTags),
      tags: data.get(#tags, or: $value.tags));

  @override
  TagSettingsModelCopyWith<$R2, TagSettingsModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TagSettingsModelCopyWithImpl($value, $cast, t);
}
