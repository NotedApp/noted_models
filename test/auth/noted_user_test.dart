import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('NotedUser', () {
    test('creates an compares empty user', () {
      NotedUser empty = NotedUser.empty();
      NotedUser user = NotedUser(id: 'test-id', name: 'test-name', email: 'test-email');

      expect(empty.id, '');
      expect(empty.name, null);
      expect(empty.email, null);

      expect(empty.isEmpty, true);
      expect(empty.isNotEmpty, false);

      expect(user.isEmpty, false);
      expect(user.isNotEmpty, true);
    });

    test('parses to and from json', () {
      NotedUser user = NotedUser(id: 'test-id', name: 'test-name', email: 'test-email');
      String json = user.toJson();
      NotedUser parsed = NotedUser.fromJson(json);

      expect(user, parsed);
    });

    test('parses to and from map', () {
      NotedUser user = NotedUser(id: 'test-id', name: 'test-name', email: 'test-email');
      Map<String, dynamic> map = user.toMap();
      NotedUser parsed = NotedUser.fromMap(map);

      expect(user, parsed);
    });
  });
}
