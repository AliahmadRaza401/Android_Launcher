import 'package:flutter/material.dart';
import 'package:launcher_app/src/core/modules/404/404.dart';
import 'package:launcher_app/src/core/modules/apps/views/app_drawer.dart';

import 'package:launcher_app/src/core/modules/home/views/home_page.dart';
import 'package:launcher_app/src/helpers/utilities/routeAnimator.dart';

class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Home.route:
        return MaterialPageRoute(builder: (_) => Home());

      case AppDrawer.route:
        return RouteAnimator.createRoute(AppDrawer());

      default:
        return MaterialPageRoute(
            builder: (_) =>
                Page404(errorMessage: "Could not find route ${settings.name}", ));
    }
  }
}
