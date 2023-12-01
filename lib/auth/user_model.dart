import 'package:dart_mappable/dart_mappable.dart';

part 'user_model.mapper.dart';

@MappableClass()
class UserModel with UserModelMappable {
  final String id;
  final String? name;
  final String? email;

  static const fromMap = UserModelMapper.fromMap;
  static const fromJson = UserModelMapper.fromJson;

  const UserModel({
    required this.id,
    this.name,
    this.email,
  });

  const UserModel.empty()
      : id = '',
        name = null,
        email = null;

  bool get isEmpty => this == const UserModel.empty();
  bool get isNotEmpty => this != const UserModel.empty();
}
