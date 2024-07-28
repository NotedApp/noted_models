import 'package:noted_models/noted_models.dart';

const NoteModel recipeTemplate = NoteModel(
  id: 'recipe_template',
  templateId: 'recipe_template',
  fields: {
    CommonField.title: NoteTextField(id: CommonField.title, name: 'title', type: NoteTextFieldType.title),
    CommonField.link: NoteLinkField(id: CommonField.link, name: 'link', useAsCoverImage: true),
    RecipeField.prepTime: NoteTextField(id: RecipeField.prepTime, name: 'prep time'),
    RecipeField.cookTime: NoteTextField(id: RecipeField.cookTime, name: 'cook time'),
  },
  editLayout: NoteEditLayout(
    rows: [
      NoteEditRow(fieldIds: [CommonField.title]),
      NoteEditRow(fieldIds: [CommonField.link]),
      NoteEditRow(fieldIds: [RecipeField.prepTime, RecipeField.cookTime]),
    ],
  ),
  cardLayout: NoteCardLayout(
    fieldIds: [
      CommonField.title,
      CommonField.link,
      RecipeField.prepTime,
      RecipeField.cookTime,
    ],
  ),
);

abstract class RecipeField {
  static const prepTime = 'prepTime';
  static const cookTime = 'cookTime';
}
