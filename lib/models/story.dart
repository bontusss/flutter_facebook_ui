import 'package:facebook/models/user.dart';

class Story {
  User user;
  String imageUrl;
  bool isViewed;

  Story(this.user, this.imageUrl, {this.isViewed = false});
}
