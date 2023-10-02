import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('UserModel', () {
    test('creates an compares empty user', () {
      UserModel empty = UserModel.empty();
      UserModel user = UserModel(id: 'test-id', name: 'test-name', email: 'test-email');

      expect(empty.id, '');
      expect(empty.name, null);
      expect(empty.email, null);

      expect(empty.isEmpty, true);
      expect(empty.isNotEmpty, false);

      expect(user.isEmpty, false);
      expect(user.isNotEmpty, true);
    });

    test('parses to and from json', () {
      UserModel user = UserModel(id: 'test-id', name: 'test-name', email: 'test-email');
      String json = user.toJson();
      UserModel parsed = UserModel.fromJson(json);

      expect(user, parsed);
    });

    test('parses to and from map', () {
      UserModel user = UserModel(id: 'test-id', name: 'test-name', email: 'test-email');
      Map<String, dynamic> map = user.toMap();
      UserModel parsed = UserModel.fromMap(map);

      expect(user, parsed);
    });
  });
}
