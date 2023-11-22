import 'package:flutter/material.dart';
import 'package:todays_weather/view/drawer_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.blue,
      title: const Text('MyApp'),
    );

    final body = Column(
      children: [
        const Text('スクロールさせない'),
        Expanded(
          child: ListView(
            children: [
              Container(
                height: 300,
                color: Colors.blue,
              ),
              Container(
                height: 300,
                color: Colors.green,
              ),
              Container(
                height: 300,
                color: Colors.yellow,
              ),
              Container(
                height: 300,
                color: Colors.orange,
              ),
              Container(
                height: 300,
                color: Colors.purple,
              ),
              Container(
                height: 300,
                color: Colors.pink,
              ),
            ],
          ),
        )
      ],
    );

    const drawer = Drawer(
      child: SideMenu(),
    );

    return Scaffold(
      appBar: appBar,
      body: body,
      drawer: drawer,
    );
  }
}
