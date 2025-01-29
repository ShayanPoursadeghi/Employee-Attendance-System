import 'package:employee_attendance_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

class LocationService {
  Location location = Location();
  late LocationData _locationData;

  Future<Map<String, double?>?> initializeAndGetLocation(
      BuildContext context) async {
    bool serviceEnabled;
    PermissionStatus permissionGranted;

    // First check whether location is enabled or not in the device
    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        Utils.showSnackBar(context, "Please enable location service!");
        return null;
      }
    }

    // If service is enabled then ask permission for location from user
    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        Utils.showSnackBar(context, "Permission denied! Please aloow location access!");
        return null;
      }
    }

    // After Permission is granted then return the coordinates.
    _locationData = await location.getLocation();
    return {
      'latitude': _locationData.latitude,
      'longitude': _locationData.longitude,
    };
  }
}
