import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_riverpod/app_router.dart';

class BaseScaffold extends StatefulWidget {
  final Widget body;
  final String title;

  const BaseScaffold({
    required this.body,
    required this.title,
    super.key,
  });

  @override
  _BaseScaffoldState createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends State<BaseScaffold> with RouteAware {
  int currentIndex = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    AutoRouter.of(context).addListener(_onRouteChanged);
    _onRouteChanged();
  }

  @override
  void dispose() {
    AutoRouter.of(context).removeListener(_onRouteChanged);
    super.dispose();
  }

  void _onRouteChanged() {
    final currentRoute = AutoRouter.of(context).current.name;
    setState(() {
      switch (currentRoute) {
        case 'HomeRoute':
          currentIndex = 0;
          break;
        case 'PostRoute':
          currentIndex = 1;
          break;
        case 'UserRoute':
          currentIndex = 2;
          break;
        default:
          currentIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);

    return Scaffold(
      drawer: Drawer(
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
                router.push(const HomeRoute());
              },
            ),
            ListTile(
              title: const Text('Post'),
              onTap: () {
                router.push(const PostRoute());
              },
            ),
            ListTile(
              title: const Text('User'),
              onTap: () {
                router.push(const UserRoute());
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(child: widget.body),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          router.push(const HomeRoute());
        },
        child: const Icon(Icons.mouse),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          switch (index) {
            case 0:
              router.push(const HomeRoute());
              break;
            case 1:
              router.push(const PostRoute());
              break;
            case 2:
              router.push(const UserRoute());
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
      ),
    );
  }
}
