import 'package:dart_mappable/dart_mappable.dart';

part 'noted_tag.mapper.dart';

/// A Noted tag, which helps to categorize a note.
@MappableClass()
class NotedTag with NotedTagMappable {
  final String id;
  final String name;
  final int color;

  static final fromMap = NotedTagMapper.fromMap;
  static final fromJson = NotedTagMapper.fromJson;

  const NotedTag({
    required this.id,
    required this.name,
    required this.color,
  });
}
