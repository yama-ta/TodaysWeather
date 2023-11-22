import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todays_weather/model/coordinate_variable.dart';
import 'package:todays_weather/model/weather_icon.dart';
import 'package:todays_weather/model/weather_variable.dart';
import 'package:todays_weather/view/drawer_view.dart';

class TodaysWeatherPage extends ConsumerWidget {
  const TodaysWeatherPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 213, 213, 213),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('今日の天気'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          children: [
            weatherBorad(wb: WeatherVariable()),
            coordinateBorad(wb: WeatherVariable()),
          ],
        ),
      ),
      drawer: const Drawer(
        child: SideMenu(),
      ),
    );
  }

  // 天気情報ボード
  Widget weatherBorad({required WeatherVariable wb}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2.0),
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('${wb.prefecture}の${wb.city}の天気'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // 天気から表示アイコンを決定
                  weatherIcon[wb.weatherType]!.createIcon(),
                  weatherText[wb.weatherType]!.createText(),
                ],
              ),
              Column(
                children: [
                  Text('最高気温:${wb.maxTemp}℃　最低気温:${wb.minTemp}℃'),
                  Text('湿度:${wb.humidity}％　服装指数:${wb.hukusoSisu}')
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  // コーデ提案ボード
  Widget coordinateBorad({required WeatherVariable wb}) {
    PageController controller = PageController();

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2.0),
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      color: Colors.white,
      child: SizedBox(
        height: 600,
        child: PageView(
          controller: controller,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Column(
              children: [
                const Text('今日の服装（レディース）'),
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () => controller.animateToPage(1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease),
                    child: const Text('メンズはこちら'),
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: PageView(
                    children: [
                      SizedBox(
                        height: 350,
                        child: ListView(
                          children: [
                            coordinate(gender: 'radies', wb: wb),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 350,
                        child: ListView(
                          children: [
                            coordinate(gender: 'radies', wb: wb),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Text('今日の服装（メンズ）'),
                Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () => controller.animateToPage(0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease),
                    child: const Text('レディースはこちら'),
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: PageView(
                    children: [
                      SizedBox(
                        height: 350,
                        child: ListView(
                          children: [
                            coordinate(gender: 'mens', wb: wb),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 350,
                        child: ListView(
                          children: [
                            coordinate(gender: 'mens', wb: wb),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // コーデ提案ボードの写真と説明文
  Widget coordinate({required String gender, required WeatherVariable wb}) {
    return Column(
      children: coordinateData[gender]![wb.hukusoSisu]!
          .map(
            (CoordinateVariable cv) => Container(
              margin: const EdgeInsets.symmetric(vertical: 2.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Image.asset(cv.image),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(cv.explanation),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
