import 'package:facebook/models/models.dart';
import 'package:facebook/palette.dart';
import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';

class OnlineUsers extends StatelessWidget {
  final List<User> onlineUsers;
  const OnlineUsers({Key? key, required this.onlineUsers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(top: 10),
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 1 + onlineUsers.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Container(
                  margin: const EdgeInsets.only(
                      left: 10, right: 20, top: 10, bottom: 10),
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    // color: Colors.grey,
                    border: Border.all(color: Palette.facebookblue, width: 1),
                  ),
                  child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: ShaderMask(
                        shaderCallback: (rect) =>
                            Palette.createRoomGradient.createShader(rect),
                        child: const Icon(
                          Icons.video_call,
                          size: 28,
                        ),
                      ),
                      label: const Text('Create\nRoom')));
            }
            final User user = onlineUsers[index - 1];
            return Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
                child: Avatar(
                  imageUrl: user.imageUrl,
                  hasOnline: user.isOnline ? true : false,
                ));
          }),
    );
  }
}
