// import 'package:flutter/material.dart';
//
// import 'package:geolocator/geolocator.dart';
//
// sealed class LocationService {
//   static Future<LocationPermissionHandle> hasPermission() async {
//     var permission = await Geolocator.checkPermission();
//
//     /// denied
//     if (permission == LocationPermission.denied ||
//         permission == LocationPermission.deniedForever) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied ||
//           permission == LocationPermission.deniedForever) {
//         debugPrint('locationService: permission denied');
//         return LocationPermissionHandle.denied;
//       }
//     }
//
//     /// if location enabled with approximated accuracy, don't allow to proceed
//     final locationAccuracy = await Geolocator.getLocationAccuracy();
//     if (locationAccuracy == LocationAccuracyStatus.reduced) {
//       debugPrint(
//         'locationService: permission denied with approximated accuracy',
//       );
//       return LocationPermissionHandle.denied;
//     }
//
//     /// check location is enabled
//     final bool serEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serEnabled) {
//       debugPrint('locationService: permission service disabled');
//       return LocationPermissionHandle.locationDisabled;
//     }
//
//     ///
//     debugPrint('locationService: permission granted');
//     return LocationPermissionHandle.success;
//   }
//
//   /// call this function only after checking permission with  [hasPermission]
//   static Future<Position> determinePosition() async {
//     final position = await Geolocator.getCurrentPosition(
//       locationSettings: const LocationSettings(accuracy: LocationAccuracy.high),
//     );
//     return position;
//   }
// }
//
// enum LocationPermissionHandle {
//   success,
//   denied,
//   locationDisabled;
//
//   bool get isSuccess => this == LocationPermissionHandle.success;
//
//   bool get isDenied => this == LocationPermissionHandle.denied;
//
//   bool get isLocationDisabled =>
//       this == LocationPermissionHandle.locationDisabled;
// }
