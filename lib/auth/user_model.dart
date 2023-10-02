import 'package:dart_mappable/dart_mappable.dart';

part 'user_model.mapper.dart';

@MappableClass()
class UserModel with UserModelMappable {
  final String id;
  final String? name;
  final String? email;

  static final fromMap = UserModelMapper.fromMap;
  static final fromJson = UserModelMapper.fromJson;

  const UserModel({
    required this.id,
    this.name = null,
    this.email = null,
  });

  const UserModel.empty()
      : this.id = '',
        name = null,
        email = null;

  bool get isEmpty => this == UserModel.empty();
  bool get isNotEmpty => this != UserModel.empty();
}
