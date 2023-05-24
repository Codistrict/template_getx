// // ignore_for_file: todo

// import 'dart:async';

// import 'package:flutter_config/flutter_config.dart';
// import 'package:flutter_polyline_points/flutter_polyline_points.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:get/get.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:permission_handler/permission_handler.dart';

// import '../services/services.dart';
// import 'controllers.dart';

// class HomeController extends GetxController {
//   @override
//   void onInit() async {
//     // TODO: implement onInit
//     super.onInit();
//     getIsCurrent(controllerNavigation.uid(), controllerNavigation.role(), 4);

//     if (controllerNavigation.role() == 1) {
//       locationPermission();
//     }
//     timer = Timer.periodic(const Duration(minutes: 3), (timer) {
//       getIsCurrent(controllerNavigation.uid(), controllerNavigation.role(), 4);
//     });
//   }

//   @override
//   void onClose() {
//     // TODO: implement onClose
//     super.onClose();
//     timer.cancel();
//   }

//   // Declare Variable
//   final controllerNavigation = Get.find<NavigationController>();

//   ActivityService activityService = ActivityService();

//   var gmapKey = FlutterConfig.get('GMAP_API_KEY');
//   var sourceLatlng = const LatLng(0.0, 0.0);
//   var destinationLatlng = const LatLng(0.0, 0.0);
//   var polylineRoute = "".obs;

//   late Position position;

//   RxBool currentProgress = false.obs;

//   late Timer timer;

//   // Declare Func

//   void setGMap() async {
//     position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high);
//     sourceLatlng = LatLng(position.latitude, position.longitude);
//     destinationLatlng = const LatLng(-7.276023, 112.782217);
//     await setRoute();
//   }

//   Future<void> setRoute() async {
//     PolylinePoints polylinePoints = PolylinePoints();
//     PolylineResult polylineResult =
//         await polylinePoints.getRouteBetweenCoordinates(
//       '$gmapKey',
//       PointLatLng(sourceLatlng.latitude, sourceLatlng.longitude),
//       PointLatLng(destinationLatlng.latitude, destinationLatlng.longitude),
//     );

//     if (polylineResult.points.isNotEmpty) {
//       for (var point in polylineResult.points) {
//         polylineRoute.value += "|${point.latitude},${point.longitude}";
//       }
//     }
//   }

//   Future<void> locationPermission() async {
//     final PermissionStatus status = await Permission.location.request();
//     if (status.isDenied || status.isPermanentlyDenied) {
//       Get.snackbar(
//           "Location Permission", "Location access needed to use Maps!");
//       openAppSettings();
//     } else if (status.isGranted) {
//       setGMap();
//     }
//   }

//   Future getIsCurrent(uid, role, isCurrent) async {
//     var response = await activityService.getServiceList(uid, role, isCurrent);
//     if (response[0] == 200) {
//       currentProgress(true);
//     } else {
//       currentProgress(false);
//     }
//   }
// }
