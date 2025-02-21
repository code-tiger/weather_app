import 'package:weather_app/data/models/city.dart';

class Cities {
  static City taipei = City(
    name: 'Taipei',
    region: 'Taiwan',
    latitude: 25.0478,
    longitude: 121.5319,
  );
  static City taichung = City(
    name: 'Taichung',
    region: 'Taiwan',
    latitude: 24.1435,
    longitude: 120.6842,
  );
  static City tainan = City(
    name: 'Tainan',
    region: 'Taiwan',
    latitude: 22.9997,
    longitude: 120.2257,
  );
  static City kaohsiung = City(
    name: 'Kaohsiung',
    region: 'Taiwan',
    latitude: 22.6163,
    longitude: 120.3062,
  );

  static List<City> allCities = [taipei, taichung, tainan, kaohsiung];
}
