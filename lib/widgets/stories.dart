import 'package:facebook/models/models.dart';
import 'package:facebook/palette.dart';
import 'package:facebook/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Stories extends StatelessWidget {
  final User user;
  final List<Story> stories;
  const Stories({Key? key, required this.stories, required this.user})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(top: 10),
      height: 250,
      // width: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 1 + stories.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const _AddMusic();
            } else if (index == 1) {
              return _AddStory(
                user: user,
              );
            }
            final Story story = stories[index - 2];
            return _Stories(
              story: story,
            );
          }),
    );
  }
}

class _AddMusic extends StatelessWidget {
  const _AddMusic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 10, 5, 10),
      // height: 180,
      width: 110,
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(MdiIcons.musicNoteOutline),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Music',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class _AddStory extends StatelessWidget {
  final User user;
  const _AddStory({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.fromLTRB(0, 10, 5, 10),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image(
              image: AssetImage(user.imageUrl),
              height: 150,
              width: 110,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 70,
            right: 30,
            left: 30,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Palette.facebookblue,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
          const Positioned(
            bottom: 5,
            left: 15,
            right: 15,
            child: Text('Create Story'),
          ),
        ],
      ),
    );
  }
}

class _Stories extends StatelessWidget {
  final Story story;
  const _Stories({
    Key? key,
    required this.story,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(0, 10, 5, 10),
          // height: 180,
          width: 110,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(story.imageUrl),
              // image: AssetImage('assets/images/img2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: 110,
          height: double.infinity,
          margin: const EdgeInsets.fromLTRB(0, 10, 5, 10),
          decoration: BoxDecoration(
            // color: Colors.black.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
                colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter),
          ),
        ),
        Positioned(
          left: 10,
          top: 20,
          child: Avatar(
            imageUrl: story.user.imageUrl,
            hasStory: true,
            isViewed: story.isViewed,
          ),
        ),
        Positioned(
          bottom: 25,
          right: 8,
          left: 8,
          child: Text(
            story.user.name,
            textAlign: TextAlign.left,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
