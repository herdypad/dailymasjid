import 'package:flutter_geocoder/geocoder.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

import '../../../../utils/app_utils.dart';

class DetailEventController extends GetxController {
  //TODO: Implement DetailEventController

  final count = 0.obs;

  late final MapController mapController;

  final double lat = -6.2278263;
  final double long = 106.8133689;

  final LatLng london = LatLng(-6.2876, 106.722);
  final LatLng pondok = LatLng(-6.2278263, 106.8133689);

  RxBool isLoad = true.obs;
  RxString alamat = "Masjid".obs;

  RxInt statusDate = 0.obs;
  RxInt statusLocation = 1.obs;

  @override
  void onInit() {
    super.onInit();
    mapController = MapController();
    loadMap();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  //TODO: Implement DetailEventController

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
      String h1 = first.addressLine.toString();
      alamat(h1.length >= 10 ? h1.substring(0, 37) + ".." : h1);
      logSys("${first.featureName} : ${first.addressLine}");
      logSys("ini alamatnya : ${addresses.toString()}");
    } catch (e) {
      logSys("ini error : $e");
    }

    isLoad(false);
  }
}
