import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

        ListTile(
          title: const Text('ホーム'),
          onTap: () {
            context.go('/home');
          },
        ),

        ListTile(
          title: const Text('今日の天気'),
          onTap: () {
            context.go('/todaysWeather');
          },
        ),

        ListTile(
          title: const Text('ListTile C'),
          onTap: () {
            debugPrint('リストタイルCをタップしました');
          },
        ),
      ],
    );
  }
}