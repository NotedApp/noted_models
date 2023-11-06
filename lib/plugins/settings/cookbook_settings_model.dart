import 'package:dart_mappable/dart_mappable.dart';
import 'package:noted_models/noted_models.dart';

part 'cookbook_settings_model.mapper.dart';

@MappableClass()
class CookbookSettingsModel with CookbookSettingsModelMappable {
  final bool showUrl;
  final bool showPrepTime;
  final bool showCookTime;
  final bool showDifficulty;
  final bool showTypes;
  final bool showCuisines;
  final Set<TagModel> typeTags;
  final Set<TagModel> cuisineTags;

  static final fromMap = CookbookSettingsModelMapper.fromMap;
  static final fromJson = CookbookSettingsModelMapper.fromJson;

  const CookbookSettingsModel({
    this.showUrl = true,
    this.showPrepTime = true,
    this.showCookTime = true,
    this.showDifficulty = true,
    this.showTypes = true,
    this.showCuisines = true,
    this.typeTags = const {},
    this.cuisineTags = const {},
  });
}
