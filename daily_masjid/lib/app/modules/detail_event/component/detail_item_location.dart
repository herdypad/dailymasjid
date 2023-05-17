import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:maps_launcher/maps_launcher.dart';

import '../../../../themes.dart';
import '../controllers/detail_event_controller.dart';

class detail_item_location extends GetView<DetailEventController> {
  const detail_item_location({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final LatLng london = LatLng(-6.2278263, 106.8133689);

    final markers = <Marker>[
      Marker(
        height: 100.h,
        width: 100.w,
        point: london,
        builder: (ctx) => Container(
          key: const Key('blue'),
          child: Column(
            children: [
              Icon(
                Icons.location_on,
                size: 50.0,
                color: primaryColor1,
              ),
            ],
          ),
        ),
      ),
    ];

    return Obx(() {
      return Container(
        child: Column(
          children: [
            Container(
              height: 126,
              child: !controller.isLoad.value
                  ? FlutterMap(
                      mapController: controller.mapController,
                      options: MapOptions(
                        center: LatLng(controller.lat, controller.long),
                        zoom: 16,
                        maxZoom: 18,
                        minZoom: 10,
                      ),
                      children: [
                        TileLayer(
                          urlTemplate:
                              'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                          userAgentPackageName:
                              'dev.fleaflet.flutter_map.example',
                        ),
                        MarkerLayer(markers: markers),
                      ],
                    )
                  : Container(child: CircularProgressIndicator()),
            ),
            SizedBox(height: 9.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 30.0,
                      color: primaryColor2,
                    ),
                    Text(
                      controller.alamat.value,
                      style: mediumText10,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    // MapsLauncher.launchQuery(controller.alamat.value);
                    MapsLauncher.launchCoordinates(
                        controller.lat, controller.long);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: primaryColor1,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 9.w),
                      child: Text(
                        "Open in map",
                        style: mediumText10.copyWith(color: primaryColor2),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    });
  }
}
