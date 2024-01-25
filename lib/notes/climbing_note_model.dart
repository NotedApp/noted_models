part of 'note_model.dart';

@MappableClass(discriminatorValue: 'climbing')
class ClimbingNoteModel extends NoteModel with ClimbingNoteModelMappable {
  final DocumentModel document;
  final String difficulty;
  final ClimbingNoteLocation location;
  final ClimbingNoteType type;

  @override
  NotedPlugin get plugin => NotedPlugin.climbing;

  static const fromMap = ClimbingNoteModelMapper.fromMap;
  static const fromJson = ClimbingNoteModelMapper.fromJson;

  ClimbingNoteModel({
    required super.id,
    super.title = '',
    super.tagIds = const {},
    super.hidden = false,
    this.document = Document.empty,
    this.difficulty = '',
    this.location = ClimbingNoteLocation.indoors,
    this.type = ClimbingNoteType.bouldering,
    super.lastUpdatedUtc,
  });

  ClimbingNoteModel.empty()
      : document = Document.empty,
        difficulty = '',
        location = ClimbingNoteLocation.indoors,
        type = ClimbingNoteType.bouldering,
        super(id: '', title: '', tagIds: const {}, hidden: false);
}

@MappableEnum()
enum ClimbingNoteLocation { indoors, outdoors }

@MappableEnum()
enum ClimbingNoteType {
  sport,
  traditional,
  bouldering,
}
