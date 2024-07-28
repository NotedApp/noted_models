// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'note_card_layout.dart';

class NoteCardLayoutMapper extends ClassMapperBase<NoteCardLayout> {
  NoteCardLayoutMapper._();

  static NoteCardLayoutMapper? _instance;
  static NoteCardLayoutMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteCardLayoutMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'NoteCardLayout';

  static List<String> _$fieldIds(NoteCardLayout v) => v.fieldIds;
  static const Field<NoteCardLayout, List<String>> _f$fieldIds =
      Field('fieldIds', _$fieldIds, opt: true, def: const []);

  @override
  final MappableFields<NoteCardLayout> fields = const {
    #fieldIds: _f$fieldIds,
  };

  static NoteCardLayout _instantiate(DecodingData data) {
    return NoteCardLayout(fieldIds: data.dec(_f$fieldIds));
  }

  @override
  final Function instantiate = _instantiate;

  static NoteCardLayout fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NoteCardLayout>(map);
  }

  static NoteCardLayout fromJson(String json) {
    return ensureInitialized().decodeJson<NoteCardLayout>(json);
  }
}

mixin NoteCardLayoutMappable {
  String toJson() {
    return NoteCardLayoutMapper.ensureInitialized()
        .encodeJson<NoteCardLayout>(this as NoteCardLayout);
  }

  Map<String, dynamic> toMap() {
    return NoteCardLayoutMapper.ensureInitialized()
        .encodeMap<NoteCardLayout>(this as NoteCardLayout);
  }

  NoteCardLayoutCopyWith<NoteCardLayout, NoteCardLayout, NoteCardLayout>
      get copyWith => _NoteCardLayoutCopyWithImpl(
          this as NoteCardLayout, $identity, $identity);
  @override
  String toString() {
    return NoteCardLayoutMapper.ensureInitialized()
        .stringifyValue(this as NoteCardLayout);
  }

  @override
  bool operator ==(Object other) {
    return NoteCardLayoutMapper.ensureInitialized()
        .equalsValue(this as NoteCardLayout, other);
  }

  @override
  int get hashCode {
    return NoteCardLayoutMapper.ensureInitialized()
        .hashValue(this as NoteCardLayout);
  }
}

extension NoteCardLayoutValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NoteCardLayout, $Out> {
  NoteCardLayoutCopyWith<$R, NoteCardLayout, $Out> get $asNoteCardLayout =>
      $base.as((v, t, t2) => _NoteCardLayoutCopyWithImpl(v, t, t2));
}

abstract class NoteCardLayoutCopyWith<$R, $In extends NoteCardLayout, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get fieldIds;
  $R call({List<String>? fieldIds});
  NoteCardLayoutCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NoteCardLayoutCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NoteCardLayout, $Out>
    implements NoteCardLayoutCopyWith<$R, NoteCardLayout, $Out> {
  _NoteCardLayoutCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NoteCardLayout> $mapper =
      NoteCardLayoutMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get fieldIds =>
      ListCopyWith($value.fieldIds, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(fieldIds: v));
  @override
  $R call({List<String>? fieldIds}) =>
      $apply(FieldCopyWithData({if (fieldIds != null) #fieldIds: fieldIds}));
  @override
  NoteCardLayout $make(CopyWithData data) =>
      NoteCardLayout(fieldIds: data.get(#fieldIds, or: $value.fieldIds));

  @override
  NoteCardLayoutCopyWith<$R2, NoteCardLayout, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NoteCardLayoutCopyWithImpl($value, $cast, t);
}
