import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';

import 'firebase_options.dart';
import 'user_constants.dart';

class ApplicationState extends ChangeNotifier {
  late Future<void> _initialization;
  late FirebaseAnalytics analytics;

  ApplicationState() {
    _initialization = _initializeAppAndAnalytics();
  }

  Set<Season> _selectedSeason = <Season>{Season.none};
  Set<Season> get selectedSeason => _selectedSeason;

  Set<PreferredWeatherTemp> _selectedWeatherTemp = <PreferredWeatherTemp>{
    PreferredWeatherTemp.none
  };
  Set<PreferredWeatherTemp> get selectedWeatherTemp => _selectedWeatherTemp;

  Set<PreferredTempUnits> _selectedTempUnts = <PreferredTempUnits>{
    PreferredTempUnits.none
  };
  Set<PreferredTempUnits> get selectedTempUnts => _selectedTempUnts;

  Set<PreferredWeatherCond> _weatherCond = <PreferredWeatherCond>{
    PreferredWeatherCond.none
  };
  Set<PreferredWeatherCond> get weatherCond => _weatherCond;

  double _preferredTemp = 0;
  double get preferredTemp => _preferredTemp;

  Future<void> _initializeAppAndAnalytics() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    analytics = FirebaseAnalytics.instance;
  }

  Future<void> get initialization => _initialization;

  Future<void> selectSeason(Set<Season> season) async {
    await initialization;

    if (season.isEmpty) {
      return;
    }

    final preferredSeason = season.first;

    _selectedSeason = <Season>{preferredSeason};
    analytics.setUserProperty(
      name: 'favorite_season', value: preferredSeason.name);
    notifyListeners();
  }

  Future<void> selectTempUnits(Set<PreferredTempUnits> tempUnits) async {
    await initialization;

    if (tempUnits.isEmpty) {
      return;
    }

    final preferredUnits = tempUnits.first;

    _selectedTempUnts = <PreferredTempUnits>{preferredUnits};
    analytics.setUserProperty(
      name: 'preferred_units', value: preferredUnits.name);
    notifyListeners();
  }

  Future<void> selectWeatherTemp(Set<PreferredWeatherTemp> weatherTemp) async {
    await initialization;

    if (weatherTemp.isEmpty) {
      return;
    }

    final preferredWeatherTemp = weatherTemp.first;

    _selectedWeatherTemp = <PreferredWeatherTemp>{weatherTemp.first};
    analytics.logEvent(
      name: 'hot_or_cold_switch',
      parameters: Map.of(
        <String, String>{'value': preferredWeatherTemp.name},
      ),
    );
    notifyListeners();
  }

  Future<void> selectWeatherCond(Set<PreferredWeatherCond> weatherCond) async {
    await initialization;

    if (weatherCond.isEmpty) {
      return;
    }

    final preferredWeatherCond = weatherCond.first;

    _weatherCond = <PreferredWeatherCond>{preferredWeatherCond};
    analytics.logEvent(
      name: 'rainy_or_sunny_switch',
      parameters: Map.of(
        <String, String>{'rainy_or_sunny_switch': preferredWeatherCond.name},
      ),
    );
    notifyListeners();
  }

  Future<void> setPreferredTemp(double newTemp) async {
    await initialization;

    _preferredTemp = newTemp;
    analytics.logEvent(
      name: 'preferred_temperature_changed',
      parameters: Map.of(
        <String, int>{'preference': _preferredTemp.round()},
      ),
    );
    notifyListeners();
  }
}
