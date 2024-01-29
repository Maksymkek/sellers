import 'package:flutter/cupertino.dart';
import 'package:sellers/presentation/home_page/home_page_screen.dart';
import 'package:sellers/presentation/router/routes.dart';

class AppRouter {
  static const initialRoute = Routes.homePage;
  final Map<String, Widget Function(BuildContext)> routes = {
    initialRoute: (context) => const HomePageScreenWidget()
  };

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return CupertinoPageRoute(builder: (context) {
      return const CupertinoPageScaffold(
          child: Center(
        child: Text('Navigation error'),
      ));
    });
  }
}
