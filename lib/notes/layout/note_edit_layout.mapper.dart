// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'note_edit_layout.dart';

class NoteEditLayoutMapper extends ClassMapperBase<NoteEditLayout> {
  NoteEditLayoutMapper._();

  static NoteEditLayoutMapper? _instance;
  static NoteEditLayoutMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteEditLayoutMapper._());
      NoteEditRowMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'NoteEditLayout';

  static List<NoteEditRow> _$rows(NoteEditLayout v) => v.rows;
  static const Field<NoteEditLayout, List<NoteEditRow>> _f$rows =
      Field('rows', _$rows, opt: true, def: const []);

  @override
  final MappableFields<NoteEditLayout> fields = const {
    #rows: _f$rows,
  };

  static NoteEditLayout _instantiate(DecodingData data) {
    return NoteEditLayout(rows: data.dec(_f$rows));
  }

  @override
  final Function instantiate = _instantiate;

  static NoteEditLayout fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NoteEditLayout>(map);
  }

  static NoteEditLayout fromJson(String json) {
    return ensureInitialized().decodeJson<NoteEditLayout>(json);
  }
}

mixin NoteEditLayoutMappable {
  String toJson() {
    return NoteEditLayoutMapper.ensureInitialized()
        .encodeJson<NoteEditLayout>(this as NoteEditLayout);
  }

  Map<String, dynamic> toMap() {
    return NoteEditLayoutMapper.ensureInitialized()
        .encodeMap<NoteEditLayout>(this as NoteEditLayout);
  }

  NoteEditLayoutCopyWith<NoteEditLayout, NoteEditLayout, NoteEditLayout>
      get copyWith => _NoteEditLayoutCopyWithImpl(
          this as NoteEditLayout, $identity, $identity);
  @override
  String toString() {
    return NoteEditLayoutMapper.ensureInitialized()
        .stringifyValue(this as NoteEditLayout);
  }

  @override
  bool operator ==(Object other) {
    return NoteEditLayoutMapper.ensureInitialized()
        .equalsValue(this as NoteEditLayout, other);
  }

  @override
  int get hashCode {
    return NoteEditLayoutMapper.ensureInitialized()
        .hashValue(this as NoteEditLayout);
  }
}

extension NoteEditLayoutValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NoteEditLayout, $Out> {
  NoteEditLayoutCopyWith<$R, NoteEditLayout, $Out> get $asNoteEditLayout =>
      $base.as((v, t, t2) => _NoteEditLayoutCopyWithImpl(v, t, t2));
}

abstract class NoteEditLayoutCopyWith<$R, $In extends NoteEditLayout, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, NoteEditRow,
      NoteEditRowCopyWith<$R, NoteEditRow, NoteEditRow>> get rows;
  $R call({List<NoteEditRow>? rows});
  NoteEditLayoutCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _NoteEditLayoutCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NoteEditLayout, $Out>
    implements NoteEditLayoutCopyWith<$R, NoteEditLayout, $Out> {
  _NoteEditLayoutCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NoteEditLayout> $mapper =
      NoteEditLayoutMapper.ensureInitialized();
  @override
  ListCopyWith<$R, NoteEditRow,
          NoteEditRowCopyWith<$R, NoteEditRow, NoteEditRow>>
      get rows => ListCopyWith(
          $value.rows, (v, t) => v.copyWith.$chain(t), (v) => call(rows: v));
  @override
  $R call({List<NoteEditRow>? rows}) =>
      $apply(FieldCopyWithData({if (rows != null) #rows: rows}));
  @override
  NoteEditLayout $make(CopyWithData data) =>
      NoteEditLayout(rows: data.get(#rows, or: $value.rows));

  @override
  NoteEditLayoutCopyWith<$R2, NoteEditLayout, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NoteEditLayoutCopyWithImpl($value, $cast, t);
}

class NoteEditRowMapper extends ClassMapperBase<NoteEditRow> {
  NoteEditRowMapper._();

  static NoteEditRowMapper? _instance;
  static NoteEditRowMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteEditRowMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'NoteEditRow';

  static List<String> _$fieldIds(NoteEditRow v) => v.fieldIds;
  static const Field<NoteEditRow, List<String>> _f$fieldIds =
      Field('fieldIds', _$fieldIds, opt: true, def: const []);

  @override
  final MappableFields<NoteEditRow> fields = const {
    #fieldIds: _f$fieldIds,
  };

  static NoteEditRow _instantiate(DecodingData data) {
    return NoteEditRow(fieldIds: data.dec(_f$fieldIds));
  }

  @override
  final Function instantiate = _instantiate;

  static NoteEditRow fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<NoteEditRow>(map);
  }

  static NoteEditRow fromJson(String json) {
    return ensureInitialized().decodeJson<NoteEditRow>(json);
  }
}

mixin NoteEditRowMappable {
  String toJson() {
    return NoteEditRowMapper.ensureInitialized()
        .encodeJson<NoteEditRow>(this as NoteEditRow);
  }

  Map<String, dynamic> toMap() {
    return NoteEditRowMapper.ensureInitialized()
        .encodeMap<NoteEditRow>(this as NoteEditRow);
  }

  NoteEditRowCopyWith<NoteEditRow, NoteEditRow, NoteEditRow> get copyWith =>
      _NoteEditRowCopyWithImpl(this as NoteEditRow, $identity, $identity);
  @override
  String toString() {
    return NoteEditRowMapper.ensureInitialized()
        .stringifyValue(this as NoteEditRow);
  }

  @override
  bool operator ==(Object other) {
    return NoteEditRowMapper.ensureInitialized()
        .equalsValue(this as NoteEditRow, other);
  }

  @override
  int get hashCode {
    return NoteEditRowMapper.ensureInitialized().hashValue(this as NoteEditRow);
  }
}

extension NoteEditRowValueCopy<$R, $Out>
    on ObjectCopyWith<$R, NoteEditRow, $Out> {
  NoteEditRowCopyWith<$R, NoteEditRow, $Out> get $asNoteEditRow =>
      $base.as((v, t, t2) => _NoteEditRowCopyWithImpl(v, t, t2));
}

abstract class NoteEditRowCopyWith<$R, $In extends NoteEditRow, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get fieldIds;
  $R call({List<String>? fieldIds});
  NoteEditRowCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NoteEditRowCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NoteEditRow, $Out>
    implements NoteEditRowCopyWith<$R, NoteEditRow, $Out> {
  _NoteEditRowCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NoteEditRow> $mapper =
      NoteEditRowMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get fieldIds =>
      ListCopyWith($value.fieldIds, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(fieldIds: v));
  @override
  $R call({List<String>? fieldIds}) =>
      $apply(FieldCopyWithData({if (fieldIds != null) #fieldIds: fieldIds}));
  @override
  NoteEditRow $make(CopyWithData data) =>
      NoteEditRow(fieldIds: data.get(#fieldIds, or: $value.fieldIds));

  @override
  NoteEditRowCopyWith<$R2, NoteEditRow, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NoteEditRowCopyWithImpl($value, $cast, t);
}
