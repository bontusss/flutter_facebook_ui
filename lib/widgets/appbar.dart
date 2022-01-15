import 'package:facebook/palette.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomAppBar extends StatelessWidget {
  final int? unreadMessages;

  const CustomAppBar({Key? key, this.unreadMessages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      floating: true,
      title: Text(
        'Facebook',
        style: TextStyle(
            color: Palette.facebookblue,
            fontSize: 26,
            letterSpacing: -1.6,
            fontWeight: FontWeight.bold),
      ),
      actions: [
        Container(
          width: 100,
          margin: const EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const _Items(icon: Icons.search),
              _Items(
                icon: MdiIcons.facebookMessenger,
                message: true,
                unreadMessages: unreadMessages,
              )
            ],
          ),
        )
      ],
    );
  }
}

/// List menu items for appbar actions.
class _Items extends StatelessWidget {
  final IconData icon;
  final bool message;
  final int? unreadMessages;
  const _Items(
      {Key? key, required this.icon, this.message = false, this.unreadMessages})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.grey[200]),
          child: IconButton(
            onPressed: () {},
            icon: Icon(icon, size: 25, color: Colors.black),
          ),
        ),
        message == true
            ? Positioned(
                top: 0,
                right: 0,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  child: Text(
                    unreadMessages.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.w900, fontSize: 12),
                  ),
                ),
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
