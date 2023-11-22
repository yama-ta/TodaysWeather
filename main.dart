import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todays_weather/view/todays_weather_page.dart';
import 'package:todays_weather/view/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  MyApp({super.key});

  final router = GoRouter(
    // パス (アプリが起動したとき)
    initialLocation: '/home',
    // パスと画面の組み合わせ
    routes: [
      GoRoute(
        path: '/home',
        builder: (context, state) => const Home(),
      ),
      GoRoute(
        path: '/todaysWeather',
        builder: (context, state) => const TodaysWeatherPage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
