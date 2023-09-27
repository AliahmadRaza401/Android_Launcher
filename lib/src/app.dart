import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fullscreen_window/fullscreen_window.dart';
import 'package:launcher_app/src/blocs/apps_cubit.dart';
import 'package:launcher_app/src/config/themes/cubit/opacity_cubit.dart';
import 'package:launcher_app/src/data/apps_api_provider.dart';
import 'package:flutter/services.dart';

import './config/routes/app_routes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FullScreenWindow.setFullScreen(true); // enter fullscreen
    setAsDefaultLauncher();
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                AppsCubit(appsApiProvider: AppsApiProvider())..loadApps(),
          ),
          BlocProvider<OpacityCubit>(create: (context) => OpacityCubit()),
        ],
        child: MaterialApp(
          showPerformanceOverlay: false,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primaryColor: Colors.pink,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              canvasColor: Colors.transparent),
          darkTheme: ThemeData(
            // New
            brightness: Brightness.light, // New
          ),
          title: "Ubuntu Launcher",
          onGenerateRoute: AppRoutes.onGenerateRoute,
        ));
  }
}

void setAsDefaultLauncher() async {
  try {
    await MethodChannel('com.android.settings.intent.action.SET_DEFAULT')
        .invokeMethod('setAsDefaultLauncher', null);
  } on PlatformException catch (e) {
    print('Error: $e');
  }
}
