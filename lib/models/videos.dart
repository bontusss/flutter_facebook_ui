import 'package:facebook/models/models.dart';

class Video {
  User user;
  String? content;
  String? imageUrl;
  String? likes;
  String? comments;
  String? shares;
  String timeAgo;

  Video(this.user,
      {this.content,
      this.imageUrl,
      this.likes,
      this.comments,
      this.shares,
      required this.timeAgo});
}
