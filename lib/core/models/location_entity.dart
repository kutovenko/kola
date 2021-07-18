import 'package:flutter/material.dart';

class LocationEntity {
  String id;
  String locationName;
  LocationType locationType;
  String address;
  double latitude;
  double longitude;
  ColorDescription colors;

  LocationEntity(
      {this.id = '0',
      this.locationType = LocationType.UNKNOWN,
      this.locationName = '',
      this.address = '',
      this.latitude = 0,
      this.longitude = 0,
      this.colors = const ColorDescription()});
}

class ColorDescription {
  final ColorEntity primary;
  final ColorEntity secondary;
  final ColorEntity accent;
  final List<ColorEntity> additional;

  const ColorDescription(
      {this.primary = const ColorEntity(colorType: ColorType.PRIMARY),
      this.secondary = const ColorEntity(colorType: ColorType.SECONDARY),
      this.accent = const ColorEntity(colorType: ColorType.ACCENT),
      this.additional = const []});
}

class ColorEntity {
  final ColorType colorType;
  final Color value;

  const ColorEntity(
      {this.colorType = ColorType.UNKNOWN, this.value = Colors.white});
}

class PictureEntity {
  String uri = '';
  String url = '';
  String title = '';
}

enum LocationType { UNKNOWN, CAFE }

enum ColorType { UNKNOWN, PRIMARY, SECONDARY, ACCENT, ADDITIONAL }
