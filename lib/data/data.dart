import 'package:facebook/models/models.dart';

var currentUser = User('Ikwechegh Ukandu', '', unReadMessages: 100);

var onlineUsers = [
  User('Okechukwu Madu', '', isOnline: true),
  User('Ifeoma Ejindu', '', isOnline: true),
  User('Isreal Okeke', '', isOnline: true),
  User('Izuchukwu Sunday', '', isOnline: true),
  User('Okaorafor Onyi', '', isOnline: true),
  User('Sandra Ehumadu', '', isOnline: true),
  User('Monday Gawama', '', isOnline: true),
  User('Isamaila Ishaku', '', isOnline: true),
  User('Blessing Okoro', '', isOnline: true),
  User('Peter Enyinnaya', '', isOnline: true),
];

var stories = [
  Story(
    currentUser,
    currentUser.imageUrl,
  ),
  Story(
    onlineUsers[0],
    onlineUsers[0].imageUrl,
  ),
  Story(
    onlineUsers[1],
    onlineUsers[1].imageUrl,
  ),
  Story(
    onlineUsers[2],
    onlineUsers[2].imageUrl,
  ),
  Story(
    onlineUsers[3],
    onlineUsers[3].imageUrl,
  ),
  Story(
    onlineUsers[5],
    onlineUsers[5].imageUrl,
  ),
  Story(
    onlineUsers[6],
    onlineUsers[6].imageUrl,
  ),
  Story(
    onlineUsers[7],
    onlineUsers[7].imageUrl,
  ),
  Story(
    onlineUsers[8],
    onlineUsers[8].imageUrl,
  ),
];

var posts = [
  Post(currentUser,
      content: 'Lorem Ipsum',
      imageUrl: '',
      likes: '10',
      shares: '2',
      comments: '6'),
];
