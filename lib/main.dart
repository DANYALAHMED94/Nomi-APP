import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nomi/presentation/MainScreenManager/MainScreenManager.dart';
// import 'package:nomi/presentation/profilescreen_screen/profilescreen_screen.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'Nomi',
          debugShowCheckedModeBanner: false,
          // home: MainScreensManager(),
          // home: ProfilescreenScreen(),
          initialRoute: AppRoutes.splashScreen,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
