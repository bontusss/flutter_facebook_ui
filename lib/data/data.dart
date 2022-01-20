import 'package:facebook/models/models.dart';
import 'package:facebook/models/videos.dart';
import 'package:flutter/material.dart';

var _images = 'assets/images/';
var currentUser =
    User('Ikwechegh Ukandu', '${_images}user5.jpg', unReadMessages: 30);

var onlineUsers = [
  User('Okechukwu Madu', '${_images}user4.jpg', isOnline: false),
  User('Ifeoma Ejindu', '${_images}user6.jpg', isOnline: true),
  User('Ikwechegh Favor', '${_images}user7.jpg', isOnline: true),
  User('Izuchukwu Sunday', '${_images}img3.jpg', isOnline: false),
  User('Okaorafor Onyi', '${_images}user9.jpg', isOnline: true),
  User('Sandra Ehumadu', '${_images}user10.jpg', isOnline: false),
  User('Monday Gawama', '${_images}ase.jpg', isOnline: true),
  User('Isamaila Ishaku', '${_images}tr.jpg', isOnline: false),
  User('Blessing Okoro', '${_images}gd.jpg', isOnline: true),
  User('Peter Enyinnaya', '${_images}uhj.jpg', isOnline: true),
];

var stories = [
  Story(onlineUsers[0], '${_images}bh.jpg', isViewed: false),
  Story(onlineUsers[1], '${_images}lk.jpg', isViewed: true),
  Story(onlineUsers[2], '${_images}fgt.jpg', isViewed: false),
  Story(onlineUsers[3], '${_images}hu.jpg', isViewed: true),
  Story(onlineUsers[5], '${_images}gy.jpg', isViewed: false),
  Story(onlineUsers[6], '${_images}hug.jpg', isViewed: true),
  Story(onlineUsers[7], '${_images}nm.jpg', isViewed: false),
  Story(onlineUsers[8], '${_images}ui.jpg', isViewed: true),
  Story(onlineUsers[4], '${_images}uhj.jpg', isViewed: true),
  Story(onlineUsers[9], '${_images}bvc.jpg', isViewed: false),
  // Story(onlineUsers[10], '${_images}nb.jpg', isViewed: true),
];

var requests = [
  Requests([onlineUsers[0], onlineUsers[1]], onlineUsers[1]),
  Requests([onlineUsers[2], onlineUsers[3]], onlineUsers[2]),
  Requests([onlineUsers[4], onlineUsers[5]], onlineUsers[3]),
  Requests([onlineUsers[6], onlineUsers[7]], onlineUsers[4]),
  Requests([onlineUsers[8], onlineUsers[9], onlineUsers[4]], onlineUsers[5]),
];

var posts = [
  Post(onlineUsers[8],
      content: 'Lorem Ipsum',
      imageUrl: 'assets/images/img3.jpg',
      likes: '100',
      shares: '20',
      comments: '6',
      timeAgo: '30m'),
  Post(onlineUsers[2],
      content: 'Lorem Ipsum iscata belongore',
      imageUrl: 'assets/images/img4.jpg',
      likes: '10',
      shares: '32',
      comments: '6',
      timeAgo: '12hr'),
];

var videos = [
  Video(onlineUsers[1],
      timeAgo: '12hr',
      comments: '45',
      content: 'Lorem Ipsum',
      imageUrl: onlineUsers[6].imageUrl,
      likes: '5',
      shares: '54'),
  Video(onlineUsers[2],
      timeAgo: '12hr',
      comments: '45',
      content: 'Lorem Ipsum',
      imageUrl: onlineUsers[7].imageUrl,
      likes: '5',
      shares: '54'),
];

var bidgets = [
  TextButton.icon(
    onPressed: () {},
    icon: const Icon(
      Icons.videocam,
      color: Colors.red,
    ),
    label: const Text(
      'Live',
      style: TextStyle(color: Colors.black),
    ),
  ),
  TextButton.icon(
    onPressed: () {},
    icon: const Icon(
      Icons.photo_library,
      color: Colors.green,
    ),
    label: const Text(
      'Photo',
      style: TextStyle(color: Colors.black),
    ),
  ),
  TextButton.icon(
    onPressed: () {},
    icon: const Icon(Icons.video_call, color: Colors.purpleAccent),
    label: const Text(
      'Room',
      style: TextStyle(color: Colors.black),
    ),
  ),
];
