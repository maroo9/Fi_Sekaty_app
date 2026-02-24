import 'dart:convert';

import 'package:fi_sekaty_carpooling_app/fetures/GooglemapsServices/Googlemaps.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class Google_maps extends StatelessWidget {
  const Google_maps({super.key});
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: CameraPosition(
        target:  LatLng(30.070435387079996, 31.513199268010016),
zoom: 10,
    ),
zoomControlsEnabled:true,
      myLocationEnabled: true,
      myLocationButtonEnabled: true,

    );
  }
}
