import 'package:flutter/material.dart';

/// List menu items for appbar actions.
class ActionItems extends StatelessWidget {
  final IconData icon;
  final bool message;
  final int? unreadMessages;

  var onPressed;
  ActionItems(
      {Key? key,
      required this.icon,
      this.message = false,
      this.unreadMessages,
      required this.onPressed})
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
            onPressed: onPressed,
            icon: Icon(icon, size: 25, color: Colors.black),
          ),
        ),
        message == true
            ? Positioned(
                top: 0,
                right: 0,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                    // width: 35,
                    // height: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red,
                    ),
                    child: Text(
                      unreadMessages.toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 12),
                    ),
                  ),
                ),
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
