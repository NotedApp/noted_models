typedef DocumentModel = List<dynamic>;

typedef DocumentUpdateModel = List<dynamic>;

extension DocumentUtil on DocumentModel {
  static const List<dynamic> emptyDocument = [
    {'insert': '\n'},
  ];
}
