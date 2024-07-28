import 'package:dart_mappable/dart_mappable.dart';

part 'tag_model.mapper.dart';

typedef TagId = String;

@MappableClass()
class TagModel with TagModelMappable {
  final TagId id;
  final String name;
  final int color;

  static const fromMap = TagModelMapper.fromMap;
  static const fromJson = TagModelMapper.fromJson;

  const TagModel({
    required this.id,
    required this.name,
    required this.color,
  });

  const TagModel.empty()
      : id = '-1',
        name = 'empty',
        color = 0x000000;

  bool get isEmpty => this == const TagModel.empty();
  bool get isNotEmpty => this != const TagModel.empty();
}
