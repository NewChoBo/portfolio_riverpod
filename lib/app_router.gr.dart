// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [PostScreen]
class PostRoute extends PageRouteInfo<void> {
  const PostRoute({List<PageRouteInfo>? children})
    : super(PostRoute.name, initialChildren: children);

  static const String name = 'PostRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PostScreen();
    },
  );
}

/// generated route for
/// [UserScreen]
class UserRoute extends PageRouteInfo<UserRouteArgs> {
  UserRoute({Key? key, required int num, List<PageRouteInfo>? children})
    : super(
        UserRoute.name,
        args: UserRouteArgs(key: key, num: num),
        initialChildren: children,
      );

  static const String name = 'UserRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<UserRouteArgs>();
      return UserScreen(key: args.key, num: args.num);
    },
  );
}

class UserRouteArgs {
  const UserRouteArgs({this.key, required this.num});

  final Key? key;

  final int num;

  @override
  String toString() {
    return 'UserRouteArgs{key: $key, num: $num}';
  }
}
