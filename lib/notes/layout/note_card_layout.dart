import 'package:dart_mappable/dart_mappable.dart';

part 'note_card_layout.mapper.dart';

@MappableClass()
class NoteCardLayout with NoteCardLayoutMappable {
  final List<String> fieldIds;

  const NoteCardLayout({this.fieldIds = const []});
}
