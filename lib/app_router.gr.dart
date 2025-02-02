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
class UserRoute extends PageRouteInfo<void> {
  const UserRoute({List<PageRouteInfo>? children})
    : super(UserRoute.name, initialChildren: children);

  static const String name = 'UserRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const UserScreen();
    },
  );
}
