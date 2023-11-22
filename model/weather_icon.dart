import 'package:flutter/material.dart';

abstract class WeatherIcon {
  Widget createIcon();
}

abstract class WeatherText {
  Widget createText();
}

enum WeatherType { SUNNY, CLOUDY, RAINY, NULL }

final Map<WeatherType, WeatherIcon> weatherIcon = {
  WeatherType.SUNNY: SunnyIcon(),
  WeatherType.CLOUDY: CloudyIcon(),
  WeatherType.RAINY: RainyIcon(),
  WeatherType.NULL: NullIcon()
};

final Map<WeatherType, WeatherText> weatherText = {
  WeatherType.SUNNY: SunnyText(),
  WeatherType.CLOUDY: CloudyText(),
  WeatherType.RAINY: RainyText(),
  WeatherType.NULL: NullText()
};

class SunnyIcon extends WeatherIcon {
  @override
  Widget createIcon() {
    return const Icon(
      size: 80,
      color: Colors.red,
      Icons.wb_sunny,
    );
  }
}

class CloudyIcon extends WeatherIcon {
  @override
  Widget createIcon() {
    return const Icon(
      size: 80,
      color: Colors.blueGrey,
      Icons.wb_cloudy,
    );
  }
}

class RainyIcon extends WeatherIcon {
  @override
  Widget createIcon() {
    return const Icon(
      size: 80,
      color: Colors.blue,
      Icons.beach_access,
    );
  }
}

class NullIcon extends WeatherIcon {
  @override
  Widget createIcon() {
    return const Icon(size: 80, color: Colors.grey, Icons.sync_problem);
  }
}

class SunnyText extends WeatherText {
  @override
  Widget createText() {
    return const Text('ê∞ÇÍ');
  }
}

class CloudyText extends WeatherText {
  @override
  Widget createText() {
    return const Text('Ç≠Ç‡ÇË');
  }
}

class RainyText extends WeatherText {
  @override
  Widget createText() {
    return const Text('âJ');
  }
}

class NullText extends WeatherText {
  @override
  Widget createText() {
    return const Text('-');
  }
}
