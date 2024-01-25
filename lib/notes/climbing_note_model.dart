part of 'note_model.dart';

@MappableClass(discriminatorValue: 'climbing')
class ClimbingNoteModel extends NoteModel with ClimbingNoteModelMappable {
  final String imageUrl;
  final String difficulty;
  final ClimbingNoteLocation location;
  final ClimbingNoteType type;
  final DocumentModel document;

  @override
  NotedPlugin get plugin => NotedPlugin.climbing;

  static const fromMap = ClimbingNoteModelMapper.fromMap;
  static const fromJson = ClimbingNoteModelMapper.fromJson;

  ClimbingNoteModel({
    required super.id,
    super.title = '',
    super.tagIds = const {},
    super.hidden = false,
    this.imageUrl = '',
    this.difficulty = '',
    this.location = ClimbingNoteLocation.indoors,
    this.type = ClimbingNoteType.bouldering,
    this.document = Document.empty,
    super.lastUpdatedUtc,
  });

  ClimbingNoteModel.empty()
      : imageUrl = '',
        difficulty = '',
        location = ClimbingNoteLocation.indoors,
        type = ClimbingNoteType.bouldering,
        document = Document.empty,
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
