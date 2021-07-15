import 'dart:html';

abstract class LocationEntity {
  String id = '';
  String locationName = '';
  LocationType locationType = LocationType.UNKNOWN;
  String address = '';
  double latitude = 0;
  double longitude = 0;

  List<String> moods = [];
}

enum LocationType { UNKNOWN, CAFE }
