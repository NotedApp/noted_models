import 'package:noted_models/noted_models.dart';

const NoteModel noteTemplate = NoteModel(
  id: 'note_template',
  templateId: 'note_template',
  fields: {
    CommonField.title: NoteTextField(id: CommonField.title, name: CommonField.title, type: NoteTextFieldType.title),
  },
  editLayout: NoteEditLayout(
    rows: [
      NoteEditRow(fieldIds: [CommonField.title])
    ],
  ),
  cardLayout: NoteCardLayout(
    fieldIds: [
      CommonField.title,
    ],
  ),
);
