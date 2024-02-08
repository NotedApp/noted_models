// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'note_field.dart';

class NoteFieldMapper extends EnumMapper<NoteField> {
  NoteFieldMapper._();

  static NoteFieldMapper? _instance;
  static NoteFieldMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NoteFieldMapper._());
    }
    return _instance!;
  }

  static NoteField fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  NoteField decode(dynamic value) {
    switch (value) {
      case 'title':
        return NoteField.title;
      case 'tagIds':
        return NoteField.tagIds;
      case 'hidden':
        return NoteField.hidden;
      case 'archived':
        return NoteField.archived;
      case 'lastUpdatedUtc':
        return NoteField.lastUpdatedUtc;
      case 'document':
        return NoteField.document;
      case 'link':
        return NoteField.link;
      case 'imageUrl':
        return NoteField.imageUrl;
      case 'location':
        return NoteField.location;
      case 'cookbookPrepTime':
        return NoteField.cookbookPrepTime;
      case 'cookbookCookTime':
        return NoteField.cookbookCookTime;
      case 'cookbookDifficulty':
        return NoteField.cookbookDifficulty;
      case 'climbingRating':
        return NoteField.climbingRating;
      case 'climbingSetting':
        return NoteField.climbingSetting;
      case 'climbingType':
        return NoteField.climbingType;
      case 'climbingAttemptsUtc':
        return NoteField.climbingAttemptsUtc;
      case 'climbingTopsUtc':
        return NoteField.climbingTopsUtc;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(NoteField self) {
    switch (self) {
      case NoteField.title:
        return 'title';
      case NoteField.tagIds:
        return 'tagIds';
      case NoteField.hidden:
        return 'hidden';
      case NoteField.archived:
        return 'archived';
      case NoteField.lastUpdatedUtc:
        return 'lastUpdatedUtc';
      case NoteField.document:
        return 'document';
      case NoteField.link:
        return 'link';
      case NoteField.imageUrl:
        return 'imageUrl';
      case NoteField.location:
        return 'location';
      case NoteField.cookbookPrepTime:
        return 'cookbookPrepTime';
      case NoteField.cookbookCookTime:
        return 'cookbookCookTime';
      case NoteField.cookbookDifficulty:
        return 'cookbookDifficulty';
      case NoteField.climbingRating:
        return 'climbingRating';
      case NoteField.climbingSetting:
        return 'climbingSetting';
      case NoteField.climbingType:
        return 'climbingType';
      case NoteField.climbingAttemptsUtc:
        return 'climbingAttemptsUtc';
      case NoteField.climbingTopsUtc:
        return 'climbingTopsUtc';
    }
  }
}

extension NoteFieldMapperExtension on NoteField {
  String toValue() {
    NoteFieldMapper.ensureInitialized();
    return MapperContainer.globals.toValue<NoteField>(this) as String;
  }
}
