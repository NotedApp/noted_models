import 'package:dart_mappable/dart_mappable.dart';

part 'tag_model.mapper.dart';

typedef TagId = String;

@MappableClass()
class TagModel with TagModelMappable {
  final TagId id;
  final String name;
  final int color;

  static final fromMap = TagModelMapper.fromMap;
  static final fromJson = TagModelMapper.fromJson;

  const TagModel({
    required this.id,
    required this.name,
    required this.color,
  });

  const TagModel.empty()
      : id = '-1',
        name = 'empty',
        color = 0x000000;

  bool get isEmpty => this == TagModel.empty();
  bool get isNotEmpty => this != TagModel.empty();
}
