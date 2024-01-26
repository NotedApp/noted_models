part of 'note_model.dart';

@MappableClass(discriminatorValue: 'climbing')
class ClimbingNoteModel extends NoteModel with ClimbingNoteModelMappable {
  final String imageUrl;
  final String difficulty;
  final String location;
  final ClimbingNoteSetting setting;
  final ClimbingNoteType type;
  final List<DateTime> attemptsUtc;
  final List<DateTime> topsUtc;
  final DocumentModel document;

  @override
  NotedPlugin get plugin => NotedPlugin.climbing;

  static const fromMap = ClimbingNoteModelMapper.fromMap;
  static const fromJson = ClimbingNoteModelMapper.fromJson;

  const ClimbingNoteModel({
    super.id = '',
    super.title = '',
    super.tagIds = const {},
    super.hidden = false,
    super.archived = false,
    super.lastUpdatedUtc,
    this.imageUrl = '',
    this.difficulty = '',
    this.location = '',
    this.setting = ClimbingNoteSetting.indoors,
    this.type = ClimbingNoteType.bouldering,
    this.attemptsUtc = const [],
    this.topsUtc = const [],
    this.document = Document.empty,
  });

  const ClimbingNoteModel.empty() : this();
}

@MappableEnum()
enum ClimbingNoteSetting { indoors, outdoors }

@MappableEnum()
enum ClimbingNoteType {
  sport,
  traditional,
  bouldering,
}
