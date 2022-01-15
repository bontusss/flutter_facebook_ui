import 'package:facebook/models/user.dart';

class Post {
  User user;
  String? content;
  String? imageUrl;
  String? likes;
  String? comments;
  String? shares;

  Post(this.user, {this.content, this.imageUrl, this.likes, this.comments, this.shares});
}