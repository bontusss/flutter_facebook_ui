import 'package:facebook/palette.dart';
import 'package:flutter/material.dart';

class FriendsMenu extends StatelessWidget {
  const FriendsMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Container(
                  margin: const EdgeInsets.only(left: 5),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent[100]!.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'Suggestions',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent[100]!.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'Your Friends',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: Divider(
              color: Colors.grey.withOpacity(0.8),
              thickness: 0.5,
              height: 1,
            ),
          )
        ],
      ),
    );
  }
}
