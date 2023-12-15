import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GoogleMapController? mapController;
  Set<Marker> markers = {};

  @override
  void initState() {
    super.initState();
    _generateRandomMarkers();
  }

  Future<void> _generateRandomMarkers() async {
    final double initialLatitude = 8.5465282;
    final double initialLongitude = 76.9151412;
    final int numberOfMarkers = 30;
    final double radius = 0.03; // Adjust the radius for random positions

    for (int i = 0; i < numberOfMarkers; i++) {
      final double lat = initialLatitude +
          Random().nextDouble() * (3 * radius) - radius;
      final double lng = initialLongitude +
          Random().nextDouble() * (3 * radius) - radius;

      // Load the image byte data (change the image path accordingly)
      ByteData imageData = await rootBundle.load('assets/images/charge.png',);

      // Create a BitmapDescriptor from the image data
      BitmapDescriptor markerIcon = BitmapDescriptor.fromBytes(
        Uint8List.view(imageData.buffer),
      );

      markers.add(
        Marker(
          markerId: MarkerId('$i'),
          position: LatLng(lat, lng),
          icon: markerIcon,
          infoWindow: InfoWindow(title: 'Marker $i'),
        ),
      );
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        onMapCreated: (controller) {
          mapController = controller;
        },
        initialCameraPosition: CameraPosition(
          target: LatLng(8.5465282, 76.9151412),
          zoom: 12.0,
        ),
        markers: markers,
      ),
    );
  }
}




