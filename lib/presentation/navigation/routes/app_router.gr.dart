// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i6;

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:display_tracking/domain/enities/user_item.dart' as _i7;
import 'package:display_tracking/presentation/screen/list_sof_screen.dart'
    as _i1;
import 'package:display_tracking/presentation/screen/popup_dialog_screen.dart'
    as _i2;
import 'package:display_tracking/presentation/screen/profile_screen.dart'
    as _i3;
import 'package:flutter/material.dart' as _i5;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    ListSofRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ListSofScreen(),
      );
    },
    PopupDialogRoute.name: (routeData) {
      final args = routeData.argsAs<PopupDialogRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.PopupDialogScreen(
          key: args.key,
          content: args.content,
          fontColor: args.fontColor,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.ProfileScreen(
          key: args.key,
          user: args.user,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.ListSofScreen]
class ListSofRoute extends _i4.PageRouteInfo<void> {
  const ListSofRoute({List<_i4.PageRouteInfo>? children})
      : super(
          ListSofRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListSofRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.PopupDialogScreen]
class PopupDialogRoute extends _i4.PageRouteInfo<PopupDialogRouteArgs> {
  PopupDialogRoute({
    _i5.Key? key,
    required String content,
    _i6.Color? fontColor,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          PopupDialogRoute.name,
          args: PopupDialogRouteArgs(
            key: key,
            content: content,
            fontColor: fontColor,
          ),
          initialChildren: children,
        );

  static const String name = 'PopupDialogRoute';

  static const _i4.PageInfo<PopupDialogRouteArgs> page =
      _i4.PageInfo<PopupDialogRouteArgs>(name);
}

class PopupDialogRouteArgs {
  const PopupDialogRouteArgs({
    this.key,
    required this.content,
    this.fontColor,
  });

  final _i5.Key? key;

  final String content;

  final _i6.Color? fontColor;

  @override
  String toString() {
    return 'PopupDialogRouteArgs{key: $key, content: $content, fontColor: $fontColor}';
  }
}

/// generated route for
/// [_i3.ProfileScreen]
class ProfileRoute extends _i4.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    _i5.Key? key,
    required _i7.UserItem user,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          ProfileRoute.name,
          args: ProfileRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i4.PageInfo<ProfileRouteArgs> page =
      _i4.PageInfo<ProfileRouteArgs>(name);
}

class ProfileRouteArgs {
  const ProfileRouteArgs({
    this.key,
    required this.user,
  });

  final _i5.Key? key;

  final _i7.UserItem user;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, user: $user}';
  }
}
