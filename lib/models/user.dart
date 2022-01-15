class User {
  String name;
  String imageUrl;
  bool isOnline;
  int? unReadMessages;

  User(
    this.name,
    this.imageUrl, {
    this.isOnline = false,
    this.unReadMessages,
  });
}
