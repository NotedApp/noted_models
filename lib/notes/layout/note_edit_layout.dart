import 'package:dart_mappable/dart_mappable.dart';

part 'note_edit_layout.mapper.dart';

@MappableClass()
class NoteEditLayout with NoteEditLayoutMappable {
  final List<NoteEditRow> rows;

  List<String> get allFieldIds => rows.fold([], (list, ids) => list + ids.fieldIds);

  const NoteEditLayout({this.rows = const []});
}

@MappableClass()
class NoteEditRow with NoteEditRowMappable {
  final List<String> fieldIds;

  const NoteEditRow({this.fieldIds = const []});
}
