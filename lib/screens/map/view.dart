import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  const MapSample({Key? key}) : super(key: key);

  @override
  _MapSampleState createState() => _MapSampleState();
}

class _MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer<GoogleMapController>();
  BitmapDescriptor? _markerBitmap;
  Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    getMarker();
    _determinePosition().then((position) {
      _goToMyPosition(position);
    });
  }

  Future<void> _goToMyPosition(Position position) async {
    final GoogleMapController controller = await _controller.future;
    final myLocation = LatLng(position.latitude, position.longitude);
    await controller.animateCamera(
      CameraUpdate.newCameraPosition(CameraPosition(target: myLocation, zoom: 19)),
    );
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId("1"),
        position: myLocation,
        icon: _markerBitmap!,
      ));
    });
  }

  Future<void> getMarker() async {
    final ImageConfiguration imageConfiguration = ImageConfiguration();
    final BitmapDescriptor bitmapDescriptor = await BitmapDescriptor.fromAssetImage(
      imageConfiguration,
      "assets/images/map_marker.png",
    );
    setState(() {
      _markerBitmap = bitmapDescriptor;
    });
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Exception('Location permissions are denied.');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw Exception('Location permissions are permanently denied.');
    }

    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _markerBitmap==null?Center(child: CircularProgressIndicator(),):GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: const CameraPosition(
          target: LatLng(0, 0),
          zoom: 14.0,
        ),
        markers: _markers,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        onTap: (LatLng position) {
          setState(() {
            _markers.add(Marker(
              markerId: MarkerId(position.toString()),
              position: position,
              icon: _markerBitmap!,
            ));
          });
        },
      ),
    );
  }
}