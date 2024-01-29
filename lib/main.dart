import 'package:flutter/cupertino.dart';
import 'package:sellers/presentation/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppRouter router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Sellers',
      routes: router.routes,
      onGenerateRoute: router.onGenerateRoute,
      initialRoute: AppRouter.initialRoute,
    );
  }
}
