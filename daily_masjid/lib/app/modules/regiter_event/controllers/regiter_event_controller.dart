import 'dart:ffi';

import 'package:daily_masjid/utils/app_utils.dart';
import 'package:flutter_geocoder/geocoder.dart';
import 'package:flutter_map/flutter_map.dart';

import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

class RegiterEventController extends GetxController {
  //TODO: Implement RegiterEventController

  RxBool isLoad = true.obs;

  final count = 0.obs;

  late final MapController mapController;

  final double lat = -6.226039211255215;
  final double long = 106.81585475586529;

  final LatLng london = LatLng(-6.2876, 106.722);
  final LatLng pondok = LatLng(-6.2278263, 106.8133689);

  @override
  void onInit() {
    super.onInit();
    mapController = MapController();
    loadMap();
    logSys("asdasdasd");
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> loadMap() async {
    isLoad(true);
    try {
      await mapController.move(london, 18);
    } catch (e) {
      print(e);
    }

    try {
      // From coordinates
      final coordinates = new Coordinates(lat, long);
      var addresses =
          await Geocoder.local.findAddressesFromCoordinates(coordinates);
      var first = addresses.first;
      logSys("${first.featureName} : ${first.addressLine}");
      logSys("ini alamatnya : ${addresses.toString()}");
    } catch (e) {
      logSys("ini error : $e");
    }

    isLoad(false);
  }
}
