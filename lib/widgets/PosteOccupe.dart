import 'package:flutter/material.dart';

class PostsButtonsWidget extends StatelessWidget {
  final List<String> posts;
  final ValueChanged<String> onSelectedPosts;

  const PostsButtonsWidget({
    Key? key,
    required this.posts,
    required this.onSelectedPosts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final background = Theme.of(context).unselectedWidgetColor;
    final allPosts = ['developper', 'livreure', 'consultant'];

    return Container(
      alignment: Alignment.centerLeft,
      width: width,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: background,
        ),
        child: ToggleButtons(
          textStyle: TextStyle(
            fontSize: 13,
          ),
          isSelected: allPosts.map((post) => posts.contains(post)).toList(),
          selectedColor: Colors.white,
          color: Colors.white,
          fillColor: Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(10),
          renderBorder: false,
          children: allPosts.map(buildPost).toList(),
          onPressed: (index) => onSelectedPosts(allPosts[index]),
        ),
      ),
    );
  }

  Widget buildPost(String text) => Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(text),
      );
}
