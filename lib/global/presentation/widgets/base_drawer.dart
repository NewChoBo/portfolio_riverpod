import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BaseDrawer extends StatelessWidget {
  const BaseDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: const Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              context.go('/home');
            },
          ),
          ListTile(
            title: const Text('Post'),
            onTap: () {
              context.go('/post');
            },
          ),
          ListTile(
            title: const Text('User'),
            onTap: () {
              context.go('/user');
            },
          ),
        ],
      ),
    );
  }
}
