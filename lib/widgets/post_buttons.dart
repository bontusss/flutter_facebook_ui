import 'package:facebook/models/models.dart';
import 'package:facebook/palette.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PostBottons extends StatelessWidget {
  final List post;
  final int index;
  const PostBottons({Key? key, required this.post, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    // color: Colors.black,
                    child: Stack(
                      children: [
                        _RoundedButtons(
                            color: Palette.facebookblue,
                            icon: MdiIcons.thumbUp),
                        const Positioned(
                          left: 15,
                          child: _RoundedButtons(
                              color: Colors.red, icon: Icons.favorite),
                        ),
                        const Positioned(
                          right: 3,
                          child: _RoundedButtons(
                              color: Colors.deepOrangeAccent,
                              icon: MdiIcons.emoticonHappy),
                        ),
                      ],
                    ),
                  ),
                  Text('${post[index].likes!}k'),
                ],
              ),
              Row(
                children: [
                  Text('${post[index].comments!} Comments . '),
                  Text('${post[index].shares!}k Shares'),
                ],
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            _Buttons(icon: MdiIcons.thumbUpOutline, text: 'Like'),
            _Buttons(icon: MdiIcons.commentOutline, text: 'Comment'),
            _Buttons(icon: MdiIcons.shareOutline, text: 'Share'),
          ],
        ),
      ],
    );
  }
}

class _Buttons extends StatelessWidget {
  final IconData icon;
  final String text;
  const _Buttons({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () => {},
      icon: Icon(icon, color: Colors.black),
      label: Text(
        text,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}

class _RoundedButtons extends StatelessWidget {
  final Color color;
  final IconData icon;
  final double size;

  const _RoundedButtons(
      {Key? key, required this.color, required this.icon, this.size = 10})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
    );
  }
}
