import 'package:facebook/models/models.dart';
import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AddFriends extends StatelessWidget {
  final List<Requests> requests;

  final int index;
  const AddFriends({Key? key, required this.requests, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      color: Colors.white,

      child: Column(
        children: [
          // Container(
          //   color: Colors.white,
          //   child: _RequestHeader(
          //     headerText: headerText,
          //     requestsNumber: requestsNumber!,
          //   ),
          // ),
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
                        image: AssetImage(requests[index].user.imageUrl),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          requests[index].user.name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 50,
                              // color: Colors.black,
                              child: Stack(
                                children: [
                                  Avatar(
                                    imageUrl:
                                        requests[index].friends[0].imageUrl,
                                    width: 25,
                                    height: 25,
                                  ),
                                  Positioned(
                                    left: 18,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.white, width: 2.0),
                                          shape: BoxShape.circle),
                                      child: Avatar(
                                        imageUrl:
                                            requests[index].friends[1].imageUrl,
                                        width: 25,
                                        height: 25,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 5),
                            const Text('3 mutual friends'),
                          ],
                        ),
                        Row(
                          children: [
                            const _actionButton(
                              text: 'Add Friend',
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            _actionButton(
                              textColor: Colors.black,
                              bgColor: Colors.grey.withOpacity(0.1),
                              text: 'Remove',
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
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 22),
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
