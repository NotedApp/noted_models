import 'package:dart_mappable/dart_mappable.dart';

part 'noted_user.mapper.dart';

/// A Noted user with an [id], optional [name], and optional [email].
@MappableClass()
class NotedUser with NotedUserMappable {
  final String id;
  final String? name;
  final String? email;

  static final fromMap = NotedUserMapper.fromMap;
  static final fromJson = NotedUserMapper.fromJson;

  const NotedUser({
    required this.id,
    this.name = null,
    this.email = null,
  });

  const NotedUser.empty()
      : this.id = '',
        name = null,
        email = null;

  bool get isEmpty => this == NotedUser.empty();
  bool get isNotEmpty => this != NotedUser.empty();
}
