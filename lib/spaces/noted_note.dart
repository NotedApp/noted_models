import 'package:dart_mappable/dart_mappable.dart';

part 'noted_note.mapper.dart';

@MappableClass(discriminatorKey: 'space')
abstract class NotedNote with NotedNoteMappable {
  const NotedNote();
}
