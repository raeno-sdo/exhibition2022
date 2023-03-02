
import 'package:flutter/material.dart';

import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class QuestionnairePage extends StatelessWidget {
  const QuestionnairePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(35.73121876877902, 139.71410441850253),
        zoom: 16.2,
        maxZoom: 19.0,
    ),
    nonRotatedChildren: [
        AttributionWidget.defaultWidget(
            source: 'OpenStreetMap contributors',
            onSourceTapped: null,
        ),
    ],
    children: [
        TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',
        ),
        MarkerLayer(
            markers: [
              Marker(
                point: LatLng(35.7320085383963, 139.7170311690326),
                builder: (context) => const Icon(
                  Icons.location_pin,
                  color: Color.fromARGB(255, 0, 137, 193),
                  size: 60,
                ),
              ),
            ],
        ),
    ],
    );
  }
}

