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
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2.0),
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              const Text('今日の服装（レディース）'),
              TextButton(
                onPressed: () {
                  debugPrint('メンズボタンが押されました');
                },
                child: const Text('メンズはこちら'),
              ),
            ],
          ),
          SizedBox(
            height: 350,
            child: PageView(
              children: [
                SizedBox(
                  height: 350,
                  child: ListView(
                    children: [
                      coordinate(wb: wb),
                    ],
                  ),
                ),
                SizedBox(
                  height: 350,
                  child: ListView(
                    children: [
                      coordinate(wb: wb),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // コーデ提案ボードの写真と説明文
  Widget coordinate({required WeatherVariable wb}) {
    return Column(
      children: radiesCoordinates[wb.hukusoSisu]!
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
