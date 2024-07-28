import 'package:noted_models/noted_models.dart';
import 'package:test/test.dart';

void main() {
  group('NoteModel', () {
    test('updates a note and gets field values', () {
      expect(_testNote.getField<DateTime>(TestField.dateTime), _testDateTime1);
      expect(_testNote.getField<String>(TestField.image), 'test-image-url');
      expect(_testNote.getField<String>(TestField.link), 'test-link-url');
      expect(_testNote.getField<double>(TestField.number), 99.9);
      expect(_testNote.getField<String>(TestField.select), 'option 2');
      expect(_testNote.getField<String>(TestField.text), 'test-text');
      expect(_testNote.getField<bool>(TestField.toggle), true);

      final updatedNote = _testNote
          .updateField<DateTime>(TestField.dateTime, _testDateTime2)
          .updateField<Duration>(TestField.duration, _testDuration1)
          .updateField<String>(TestField.image, 'updated-image-url')
          .updateField<double>(TestField.number, 100.0)
          .updateField<bool>(TestField.toggle, false);

      expect(updatedNote.getField<DateTime>(TestField.dateTime), _testDateTime2);
      expect(updatedNote.getField<Duration>(TestField.duration), _testDuration1);
      expect(updatedNote.getField<String>(TestField.image), 'updated-image-url');
      expect(updatedNote.getField<double>(TestField.number), 100.0);
      expect(updatedNote.getField<bool>(TestField.toggle), false);
    });

    test('update fails with incorrect value type', () {
      expect(_testNote.getField<String>(TestField.image), 'test-image-url');

      final failedUpdate0 = _testNote.updateField<DateTime>(TestField.image, _testDateTime2);
      expect(failedUpdate0.getField<String>(TestField.image), 'test-image-url');

      final failedUpdate1 = _testNote.updateField<double>(TestField.image, 10.0);
      expect(failedUpdate1.getField<String>(TestField.image), 'test-image-url');

      final successfulUpdate = _testNote.updateField<String>(TestField.image, 'updated-image-url');
      expect(successfulUpdate.getField<String>(TestField.image), 'updated-image-url');
    });

    test('gets list of editable fields', () {
      expect(_testNote.editLayout.allFieldIds.length, 8);
    });

    test('gets searchable text', () {
      expect(_testNote.fields[TestField.dateTime]?.searchableText, null);
      expect(_testNote.fields[TestField.duration]?.searchableText, null);
      expect(_testNote.fields[TestField.image]?.searchableText, 'test-image-url');
      expect(_testNote.fields[TestField.link]?.searchableText, 'test-link-url');
      expect(_testNote.fields[TestField.number]?.searchableText, '99.9');
      expect(_testNote.fields[TestField.select]?.searchableText, 'option 2');
      expect(_testNote.fields[TestField.text]?.searchableText, 'test-text');
      expect(_testNote.fields[TestField.toggle]?.searchableText, null);
    });

    test('gets empty fields', () {
      expect(_testNote.fields[TestField.dateTime]?.isEmpty, false);
      expect(_testNote.fields[TestField.duration]?.isEmpty, false);
      expect(_testNote.fields[TestField.image]?.isEmpty, false);
      expect(_testNote.fields[TestField.link]?.isEmpty, false);
      expect(_testNote.fields[TestField.number]?.isEmpty, false);
      expect(_testNote.fields[TestField.select]?.isEmpty, false);
      expect(_testNote.fields[TestField.text]?.isEmpty, false);
      expect(_testNote.fields[TestField.toggle]?.isEmpty, false);

      final updatedNote = _testNote
          .updateField<DateTime>(TestField.dateTime, NoteDateTimeField.defaultDate)
          .updateField<Duration>(TestField.duration, NoteDurationField.defaultDuration)
          .updateField<String>(TestField.image, '')
          .updateField<String>(TestField.link, '')
          .updateField<double>(TestField.number, 0.0)
          .updateField<String>(TestField.select, '')
          .updateField<String>(TestField.text, '')
          .updateField<bool>(TestField.toggle, false);

      expect(updatedNote.fields[TestField.dateTime]?.isEmpty, true);
      expect(updatedNote.fields[TestField.duration]?.isEmpty, true);
      expect(updatedNote.fields[TestField.image]?.isEmpty, true);
      expect(updatedNote.fields[TestField.link]?.isEmpty, true);
      expect(updatedNote.fields[TestField.number]?.isEmpty, false);
      expect(updatedNote.fields[TestField.select]?.isEmpty, true);
      expect(updatedNote.fields[TestField.text]?.isEmpty, true);
      expect(updatedNote.fields[TestField.toggle]?.isEmpty, false);
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
final _testDateTime2 = DateTime.fromMillisecondsSinceEpoch(3000, isUtc: true);

const _testDuration0 = Duration(milliseconds: 1000);
const _testDuration1 = Duration(milliseconds: 2000);

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
    TestField.duration: const NoteDurationField(id: TestField.duration, name: 'title', value: _testDuration0),
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
      NoteEditRow(fieldIds: [TestField.dateTime, TestField.duration]),
      NoteEditRow(fieldIds: [TestField.image]),
      NoteEditRow(fieldIds: [TestField.link, TestField.number]),
      NoteEditRow(fieldIds: [TestField.select, TestField.text]),
      NoteEditRow(fieldIds: [TestField.toggle]),
    ],
  ),
  cardLayout: const NoteCardLayout(
    fieldIds: [
      TestField.dateTime,
      TestField.duration,
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
  static const duration = 'duration';
  static const image = 'image';
  static const link = 'link';
  static const number = 'number';
  static const select = 'select';
  static const text = 'text';
  static const toggle = 'toggle';
}
