// ignore_for_file: prefer_const_constructors

import 'package:facebook/palette.dart';
import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FriendsRequestsCard extends StatelessWidget {
  final String headerText;
  final int? requestsNumber;
  final String imageUrl;
  final String name;
  const FriendsRequestsCard(
      {Key? key,
      required this.headerText,
      this.requestsNumber,
      required this.imageUrl,
      required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      color: Colors.blueAccent.withOpacity(0.2),

      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: _RequestHeader(
              headerText: headerText,
              requestsNumber: requestsNumber!,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  // color: Colors.black,
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(imageUrl), fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              name,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('6h')
                          ],
                        ),
                        Row(
                          children: const [
                            Avatar(
                              imageUrl: 'assets/images/img1.jpg',
                              width: 25,
                              height: 25,
                            ),
                            SizedBox(width: 5),
                            Text('3 mutual friends'),
                          ],
                        ),
                        Row(
                          children: const [
                            _actionButton(
                              text: 'Confirm',
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            _actionButton(
                              textColor: Colors.black,
                              bgColor: Colors.white30,
                              text: 'Delete',
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _RequestHeader extends StatelessWidget {
  final String headerText;
  final int? requestsNumber;
  final bool hasSeeAll;
  const _RequestHeader(
      {Key? key,
      required this.headerText,
      this.requestsNumber,
      this.hasSeeAll = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: headerText,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                TextSpan(
                  text: requestsNumber!.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          hasSeeAll == true
              ? Text(
                  'See All',
                  style: TextStyle(
                      color: Palette.facebookblue, fontWeight: FontWeight.bold),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}

class _actionButton extends StatelessWidget {
  final Color? textColor;
  final Color? bgColor;
  final String text;
  const _actionButton(
      {Key? key,
      this.textColor = Colors.white,
      this.bgColor = Colors.blue,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            text,
            style: TextStyle(color: textColor),
          )),
    );
  }
}
