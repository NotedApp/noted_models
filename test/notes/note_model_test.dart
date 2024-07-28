import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('NoteModel', () {
    test('gets list of editable fields', () {
      expect(
        _testNote.editLayout.allFieldIds,
        const [
          TestField.dateTime,
          TestField.image,
          TestField.link,
          TestField.number,
          TestField.select,
          TestField.text,
          TestField.toggle,
        ],
      );
    });

    test('gets searchable text', () {
      expect(_testNote.fields[TestField.dateTime]?.searchableText, null);
      expect(_testNote.fields[TestField.image]?.searchableText, 'test-image-url');
      expect(_testNote.fields[TestField.link]?.searchableText, 'test-link-url');
      expect(_testNote.fields[TestField.number]?.searchableText, '99.9');
      expect(_testNote.fields[TestField.select]?.searchableText, 'option 2');
      expect(_testNote.fields[TestField.text]?.searchableText, 'test-text');
      expect(_testNote.fields[TestField.toggle]?.searchableText, null);
    });

    test('parses to and from json', () {
      final json = _testNote.toJson();
      final parsed = NoteModel.fromJson(json);

      expect(parsed, _testNote);
    });

    test('parses to and from map', () {
      final map = _testNote.toMap();
      final parsed = NoteModel.fromMap(map);

      expect(parsed, _testNote);
    });
  });
}

final _testDateTime0 = DateTime.fromMillisecondsSinceEpoch(1000, isUtc: true);
final _testDateTime1 = DateTime.fromMillisecondsSinceEpoch(2000, isUtc: true);

final _testNote = NoteModel(
  id: 'test_note',
  templateId: 'test_note',
  defaultFields: NoteDefaultFields(
    coverImage: 'test-cover-image-url',
    document: Document.mock,
    archived: true,
    lastUpdatedUtc: _testDateTime0,
  ),
  fields: {
    TestField.dateTime: NoteDateTimeField(id: TestField.dateTime, name: 'title', value: _testDateTime1),
    TestField.image: const NoteImageField(id: TestField.image, name: 'image', value: 'test-image-url'),
    TestField.link: const NoteLinkField(id: TestField.link, name: 'link', value: 'test-link-url'),
    TestField.number: const NoteNumberField(id: TestField.number, name: 'number', value: 99.9),
    TestField.select: const NoteSelectField(
      id: TestField.select,
      name: 'select',
      value: 'option 2',
      options: ['option 1', 'option 2', 'option 3'],
    ),
    TestField.text: const NoteTextField(id: TestField.text, name: 'text', value: 'test-text'),
    TestField.toggle: const NoteToggleField(id: TestField.toggle, name: 'toggle', value: true),
  },
  editLayout: const NoteEditLayout(
    rows: [
      NoteEditRow(fieldIds: [TestField.dateTime]),
      NoteEditRow(fieldIds: [TestField.image]),
      NoteEditRow(fieldIds: [TestField.link, TestField.number]),
      NoteEditRow(fieldIds: [TestField.select, TestField.text]),
      NoteEditRow(fieldIds: [TestField.toggle]),
    ],
  ),
  cardLayout: const NoteCardLayout(
    fieldIds: [
      TestField.dateTime,
      TestField.image,
      TestField.link,
      TestField.number,
      TestField.select,
      TestField.text,
      TestField.toggle,
    ],
  ),
);

abstract class TestField {
  static const dateTime = 'dateTime';
  static const image = 'image';
  static const link = 'link';
  static const number = 'number';
  static const select = 'select';
  static const text = 'text';
  static const toggle = 'toggle';
}
