import 'package:flutter/material.dart';
import 'package:kola/core/models/location_entity.dart';

class MockData {
  LocationEntity brownCafe = LocationEntity(
      id: '1',
      locationName: 'Brown Cafe',
      locationType: LocationType.CAFE,
      address: 'ul. Berezovaya Roscha 99',
      colors: ColorDescription(
          primary: ColorEntity(
              colorType: ColorType.PRIMARY, value: Color(0xFF665e49)),
          secondary: ColorEntity(
              colorType: ColorType.SECONDARY, value: Color(0xFFf9ff85))));

  LocationEntity greenCafe = LocationEntity(
      id: '2',
      locationName: 'Green Cafe',
      locationType: LocationType.CAFE,
      address: 'ul. Hamam 99',
      colors: ColorDescription(
          primary: ColorEntity(
              colorType: ColorType.PRIMARY, value: Color(0xFF5c9c52)),
          secondary: ColorEntity(
              colorType: ColorType.SECONDARY, value: Color(0xFFededed))));

  LocationEntity pinkCafe = LocationEntity(
      id: '3',
      locationName: 'Pink Cafe',
      locationType: LocationType.CAFE,
      address: 'ul. Krasnaya 99',
      colors: ColorDescription(
          primary: ColorEntity(
              colorType: ColorType.PRIMARY, value: Color(0xFFe67777)),
          secondary: ColorEntity(
              colorType: ColorType.SECONDARY, value: Color(0xFFf9ff85))));

  LocationEntity whiteCafe = LocationEntity(
      id: '4',
      locationName: 'White Cafe',
      locationType: LocationType.CAFE,
      address: 'ul. Belaya 99',
      colors: ColorDescription(
          primary: ColorEntity(
              colorType: ColorType.PRIMARY, value: Color(0xFFe8e8e8)),
          secondary: ColorEntity(
              colorType: ColorType.SECONDARY, value: Color(0xFF121111))));
}
