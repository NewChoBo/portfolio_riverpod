import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BaseNavigationBar extends StatelessWidget {
  final int currentIndex;
  const BaseNavigationBar({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        switch (index) {
          case 0:
            context.go('/'); // go to Home
            break;
          case 1:
            context.go('/post'); // go to Post
            break;
          case 2:
            context.go('/user'); // go to User
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.post_add),
          label: 'Post',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'User',
        ),
      ],
    );
  }
}
