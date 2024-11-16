import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapsView extends StatelessWidget {
  GoogleMapsView({super.key});

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  Set<Marker> markers = {
    const Marker(
        markerId: MarkerId('1'),
        position: LatLng(33.6995, 73.0363),
        infoWindow: InfoWindow(title: 'Islamabad')),
    const Marker(
        markerId: MarkerId('2'),
        position: LatLng(34.6995, 73.0363),
        infoWindow: InfoWindow(title: 'Second Marker')),
    const Marker(
        markerId: MarkerId('3'),
        position: LatLng(35.6995, 73.0363),
        infoWindow: InfoWindow(title: 'Third Marker')),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google Maps"),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition:
            const CameraPosition(target: LatLng(33.6995, 73.0363), zoom: 13),
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        markers: markers,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
