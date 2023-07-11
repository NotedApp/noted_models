// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'noted_user.dart';

class NotedUserMapper extends ClassMapperBase<NotedUser> {
  NotedUserMapper._();

  static NotedUserMapper? _instance;
  static NotedUserMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NotedUserMapper._());
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'NotedUser';

  static String _$id(NotedUser v) => v.id;
  static const Field<NotedUser, String> _f$id = Field('id', _$id);
  static String? _$name(NotedUser v) => v.name;
  static const Field<NotedUser, String> _f$name =
      Field('name', _$name, opt: true);
  static String? _$email(NotedUser v) => v.email;
  static const Field<NotedUser, String> _f$email =
      Field('email', _$email, opt: true);

  @override
  final Map<Symbol, Field<NotedUser, dynamic>> fields = const {
    #id: _f$id,
    #name: _f$name,
    #email: _f$email,
  };

  static NotedUser _instantiate(DecodingData data) {
    return NotedUser(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        email: data.dec(_f$email));
  }

  @override
  final Function instantiate = _instantiate;

  static NotedUser fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<NotedUser>(map));
  }

  static NotedUser fromJson(String json) {
    return _guard((c) => c.fromJson<NotedUser>(json));
  }
}

mixin NotedUserMappable {
  String toJson() {
    return NotedUserMapper._guard((c) => c.toJson(this as NotedUser));
  }

  Map<String, dynamic> toMap() {
    return NotedUserMapper._guard((c) => c.toMap(this as NotedUser));
  }

  NotedUserCopyWith<NotedUser, NotedUser, NotedUser> get copyWith =>
      _NotedUserCopyWithImpl(this as NotedUser, $identity, $identity);
  @override
  String toString() {
    return NotedUserMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            NotedUserMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return NotedUserMapper._guard((c) => c.hash(this));
  }
}

extension NotedUserValueCopy<$R, $Out> on ObjectCopyWith<$R, NotedUser, $Out> {
  NotedUserCopyWith<$R, NotedUser, $Out> get $asNotedUser =>
      $base.as((v, t, t2) => _NotedUserCopyWithImpl(v, t, t2));
}

abstract class NotedUserCopyWith<$R, $In extends NotedUser, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? name, String? email});
  NotedUserCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _NotedUserCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, NotedUser, $Out>
    implements NotedUserCopyWith<$R, NotedUser, $Out> {
  _NotedUserCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<NotedUser> $mapper =
      NotedUserMapper.ensureInitialized();
  @override
  $R call({String? id, Object? name = $none, Object? email = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (name != $none) #name: name,
        if (email != $none) #email: email
      }));
  @override
  NotedUser $make(CopyWithData data) => NotedUser(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      email: data.get(#email, or: $value.email));

  @override
  NotedUserCopyWith<$R2, NotedUser, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _NotedUserCopyWithImpl($value, $cast, t);
}
