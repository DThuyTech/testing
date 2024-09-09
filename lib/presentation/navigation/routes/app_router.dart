import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import 'app_router.gr.dart';

@LazySingleton()
@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: PopupDialogRoute.page),
        AutoRoute(page: ListSofRoute.page, initial: true),
        AutoRoute(page: ProfileRoute.page),
      ];
}
