typedef DocumentModel = List<dynamic>;

typedef DocumentUpdateModel = List<dynamic>;

class Document {
  static const empty = [
    {'insert': '\n'}
  ];

  static const mock = [
    {'insert': 'hello world\n'}
  ];
}
