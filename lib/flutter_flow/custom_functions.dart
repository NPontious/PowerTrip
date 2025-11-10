import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

double calcDistance(
  LatLng latLng1,
  LatLng latLng2,
) {
  const double earthRadius = 6371.0; // in kilometers
  final double lat1 = math.pi / 180.0 * latLng1.latitude;
  final double lon1 = math.pi / 180.0 * latLng1.longitude;
  final double lat2 = math.pi / 180.0 * latLng2.latitude;
  final double lon2 = math.pi / 180.0 * latLng2.longitude;

  final double dLat = lat2 - lat1;
  final double dLon = lon2 - lon1;

  final double a = math.sin(dLat / 2) * math.sin(dLat / 2) +
      math.cos(lat1) * math.cos(lat2) * math.sin(dLon / 2) * math.sin(dLon / 2);
  final double c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));

  final double distance = earthRadius * c;
  return distance;
}

PlaceStruct? knownPlace(
  List<PlaceStruct> savedPlaces,
  LatLng location,
) {
  for (PlaceStruct place in savedPlaces) {
    if (calcDistance(location, place.location!) < 1) {
      return place;
    }
  }
  return null;
}

LatLng parseAsLoc(
  double lat,
  double lng,
) {
  return LatLng(lat, lng);
}

LatLng midpoint(
  LatLng loc1,
  LatLng loc2,
) {
  double avgLat = (loc1.latitude + loc2.latitude) / 2;
  double avgLng = (loc1.longitude + loc2.longitude) / 2;
  return LatLng(avgLat, avgLng);
}

String formatTime(String input) {
  DateTime dateTime = DateFormat("dd-MMM-yyyy HH:mm:ss.SSS").parse(input);
  return DateFormat("MM/dd HH:mm").format(dateTime);
}
